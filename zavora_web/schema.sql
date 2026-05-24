-- Create an ENUM type for roles
CREATE TYPE public.user_role AS ENUM ('admin', 'dokter', 'pasien');

-- Create the profiles table extending auth.users
CREATE TABLE public.profiles (
  id UUID REFERENCES auth.users(id) ON DELETE CASCADE PRIMARY KEY,
  role user_role NOT NULL DEFAULT 'pasien',
  full_name TEXT NOT NULL,
  email TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable Realtime for the profiles table
ALTER PUBLICATION supabase_realtime ADD TABLE public.profiles;

-- Enable Row Level Security (RLS)
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Create basic RLS Policies
-- Allow anyone to view profiles (or restrict this to authenticated users only)
CREATE POLICY "Profiles are viewable by authenticated users."
  ON public.profiles FOR SELECT
  TO authenticated
  USING ( true );

-- Users can insert their own profile
CREATE POLICY "Users can insert their own profile."
  ON public.profiles FOR INSERT
  WITH CHECK ( auth.uid() = id );

-- Users can update their own profile
CREATE POLICY "Users can update own profile."
  ON public.profiles FOR UPDATE
  USING ( auth.uid() = id );

-- Admins can do anything
CREATE POLICY "Admins have full access."
  ON public.profiles FOR ALL
  TO authenticated
  USING ( (SELECT role FROM public.profiles WHERE id = auth.uid()) = 'admin' );

-- Function to handle new user registration and automatically create a profile
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER SET search_path = public
AS $$
BEGIN
  INSERT INTO public.profiles (id, full_name, email, role)
  VALUES (
    NEW.id,
    COALESCE(NEW.raw_user_meta_data->>'full_name', 'Unknown User'),
    NEW.email,
    COALESCE((NEW.raw_user_meta_data->>'role')::user_role, 'pasien'::user_role)
  );
  RETURN NEW;
END;
$$;

-- Trigger the function every time a user is created
CREATE OR REPLACE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE PROCEDURE public.handle_new_user();
