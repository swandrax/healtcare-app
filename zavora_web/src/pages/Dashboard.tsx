import { useEffect, useState } from 'react';
import { supabase } from '../lib/supabase';
import { useNavigate } from 'react-router-dom';
import { LogOut, Users, Activity, UserCircle, Beaker } from 'lucide-react';

interface Profile {
  id: string;
  full_name: string;
  email: string;
  role: 'admin' | 'dokter' | 'pasien';
  created_at: string;
}

export default function Dashboard() {
  const [profile, setProfile] = useState<Profile | null>(null);
  const [users, setUsers] = useState<Profile[]>([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();

  useEffect(() => {
    fetchProfile();
    
    // Real-time subscription for profiles table
    const channel = supabase
      .channel('public:profiles')
      .on(
        'postgres_changes',
        { event: '*', schema: 'public', table: 'profiles' },
        (payload) => {
          console.log('Real-time update:', payload);
          // Refresh users list if admin
          if (profile?.role === 'admin') {
            fetchAllUsers();
          }
          // Update own profile if modified
          if (payload.new && (payload.new as Profile).id === profile?.id) {
            setProfile(payload.new as Profile);
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [profile?.role, profile?.id]);

  const fetchProfile = async () => {
    const { data: { user } } = await supabase.auth.getUser();
    
    if (!user) {
      navigate('/login');
      return;
    }

    const { data, error } = await supabase
      .from('profiles')
      .select('*')
      .eq('id', user.id)
      .single();

    if (error) {
      console.error('Error fetching profile:', error);
    } else {
      setProfile(data);
      if (data.role === 'admin') {
        fetchAllUsers();
      }
    }
    setLoading(false);
  };

  const fetchAllUsers = async () => {
    const { data, error } = await supabase
      .from('profiles')
      .select('*')
      .order('created_at', { ascending: false });
      
    if (error) console.error('Error fetching users:', error);
    else setUsers(data || []);
  };

  const handleLogout = async () => {
    await supabase.auth.signOut();
    navigate('/login');
  };

  const handleDeleteUser = async (id: string) => {
    const confirmDelete = window.confirm("Are you sure you want to delete this user?");
    if (!confirmDelete) return;

    // In Supabase, deleting from auth.users (if using service role) cascades to profiles.
    // However, from the client side, we usually just delete the profile or call an Edge Function.
    // Assuming RLS allows admin to delete profiles here:
    const { error } = await supabase.from('profiles').delete().eq('id', id);
    if (error) {
      alert("Error deleting profile: " + error.message);
    } else {
      fetchAllUsers();
    }
  };

  if (loading) {
    return <div className="auth-container"><div className="loader"></div></div>;
  }

  return (
    <div className="container" style={{ paddingTop: '4rem' }}>
      <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'center', marginBottom: '3rem' }}>
        <div>
          <h1 className="text-gradient" style={{ fontSize: '2.5rem', marginBottom: '0.5rem' }}>Welcome, {profile?.full_name}</h1>
          <p style={{ color: 'var(--text-secondary)' }}>You are logged in as <span className={`role-badge role-${profile?.role}`}>{profile?.role}</span></p>
        </div>
        <div style={{ display: 'flex', gap: '1rem' }}>
          <button onClick={() => navigate('/test-suite')} className="glass-button" style={{ backgroundColor: 'rgba(59, 130, 246, 0.2)' }}>
            <Beaker size={18} /> Test Suite
          </button>
          <button onClick={handleLogout} className="glass-button secondary">
            <LogOut size={18} /> Logout
          </button>
        </div>
      </div>

      {profile?.role === 'admin' && (
        <div className="glass-panel">
          <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1.5rem' }}>
            <Users style={{ color: 'var(--primary)' }} />
            <h3>User Management</h3>
          </div>
          <div style={{ overflowX: 'auto' }}>
            <table className="glass-table">
              <thead>
                <tr>
                  <th>Name</th>
                  <th>Email</th>
                  <th>Role</th>
                  <th>Joined</th>
                  <th>Actions</th>
                </tr>
              </thead>
              <tbody>
                {users.map(u => (
                  <tr key={u.id}>
                    <td style={{ fontWeight: 500 }}>{u.full_name}</td>
                    <td style={{ color: 'var(--text-secondary)' }}>{u.email}</td>
                    <td><span className={`role-badge role-${u.role}`}>{u.role}</span></td>
                    <td style={{ color: 'var(--text-secondary)' }}>{new Date(u.created_at).toLocaleDateString()}</td>
                    <td>
                      {u.id !== profile.id && (
                        <button 
                          onClick={() => handleDeleteUser(u.id)}
                          style={{ background: 'transparent', border: '1px solid var(--danger)', color: 'var(--danger)', padding: '0.25rem 0.5rem', borderRadius: '4px', cursor: 'pointer' }}
                        >
                          Delete
                        </button>
                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        </div>
      )}

      {profile?.role === 'dokter' && (
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))', gap: '2rem' }}>
          <div className="glass-panel">
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1rem' }}>
              <Activity style={{ color: 'var(--success)' }} />
              <h3>Today's Schedule</h3>
            </div>
            <p style={{ color: 'var(--text-secondary)' }}>No upcoming appointments today.</p>
          </div>
          <div className="glass-panel">
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1rem' }}>
              <Users style={{ color: 'var(--primary)' }} />
              <h3>Patient List</h3>
            </div>
            <p style={{ color: 'var(--text-secondary)' }}>Connect to the medical records system to view patients.</p>
          </div>
        </div>
      )}

      {profile?.role === 'pasien' && (
        <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))', gap: '2rem' }}>
          <div className="glass-panel">
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1rem' }}>
              <UserCircle style={{ color: 'var(--primary)' }} />
              <h3>My Profile</h3>
            </div>
            <div style={{ marginBottom: '0.5rem' }}><strong>Name:</strong> {profile.full_name}</div>
            <div style={{ marginBottom: '0.5rem' }}><strong>Email:</strong> {profile.email}</div>
            <button className="glass-button secondary" style={{ marginTop: '1rem', width: '100%' }}>Edit Profile</button>
          </div>
          <div className="glass-panel">
            <div style={{ display: 'flex', alignItems: 'center', gap: '0.75rem', marginBottom: '1rem' }}>
              <Activity style={{ color: 'var(--success)' }} />
              <h3>Medical History</h3>
            </div>
            <p style={{ color: 'var(--text-secondary)' }}>No recent medical history found.</p>
          </div>
        </div>
      )}
    </div>
  );
}
