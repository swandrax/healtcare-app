import { useState } from 'react';
import { supabase } from '../lib/supabase';
import { useNavigate, Link } from 'react-router-dom';
import { Shield, Mail, Lock, User, Key } from 'lucide-react';

export default function Register() {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [fullName, setFullName] = useState('');
  const [role, setRole] = useState('pasien');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [otpRequired, setOtpRequired] = useState(false);
  const [otpToken, setOtpToken] = useState('');
  const navigate = useNavigate();

  const handleRegister = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        data: {
          full_name: fullName,
          role: role,
        },
      },
    });

    if (error) {
      setError(error.message);
      setLoading(false);
    } else {
      if (data.session == null) {
        // Email confirmation required
        setOtpRequired(true);
        setLoading(false);
      } else {
        navigate('/dashboard');
      }
    }
  };

  const handleVerifyOtp = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setError(null);

    const { error } = await supabase.auth.verifyOtp({
      email,
      token: otpToken,
      type: 'signup',
    });

    if (error) {
      setError(error.message);
      setLoading(false);
    } else {
      navigate('/dashboard');
    }
  };

  if (otpRequired) {
    return (
      <div className="auth-container">
        <div className="glass-panel auth-card">
          <div style={{ textAlign: 'center', marginBottom: '2rem' }}>
            <Shield size={48} style={{ color: 'var(--success)', margin: '0 auto 1rem auto' }} />
            <h2 className="text-gradient">Verify Email</h2>
            <p style={{ color: 'var(--text-secondary)' }}>Enter the 6-digit code sent to {email}</p>
          </div>

          {error && (
            <div style={{ background: 'var(--danger)', color: 'white', padding: '0.75rem', borderRadius: '8px', marginBottom: '1rem', fontSize: '0.875rem' }}>
              {error}
            </div>
          )}

          <form onSubmit={handleVerifyOtp}>
            <div style={{ marginBottom: '1.5rem' }}>
              <label className="label">Authentication Code</label>
              <div style={{ position: 'relative' }}>
                <Key size={18} style={{ position: 'absolute', left: '1rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--text-secondary)' }} />
                <input
                  type="text"
                  className="glass-input"
                  style={{ paddingLeft: '2.5rem', letterSpacing: '0.2em', textAlign: 'center', fontSize: '1.25rem' }}
                  value={otpToken}
                  onChange={(e) => setOtpToken(e.target.value)}
                  required
                  maxLength={6}
                  placeholder="000000"
                />
              </div>
            </div>

            <button type="submit" className="glass-button" style={{ width: '100%' }} disabled={loading}>
              {loading ? <div className="loader"></div> : 'Verify & Login'}
            </button>
          </form>
        </div>
      </div>
    );
  }

  return (
    <div className="auth-container">
      <div className="glass-panel auth-card">
        <div style={{ textAlign: 'center', marginBottom: '2rem' }}>
          <Shield size={48} style={{ color: 'var(--primary)', margin: '0 auto 1rem auto' }} />
          <h2 className="text-gradient">Create Account</h2>
          <p style={{ color: 'var(--text-secondary)' }}>Sign up for Zavora Health</p>
        </div>

        {error && (
          <div style={{ background: 'var(--danger)', color: 'white', padding: '0.75rem', borderRadius: '8px', marginBottom: '1rem', fontSize: '0.875rem' }}>
            {error}
          </div>
        )}

        <form onSubmit={handleRegister}>
          <div style={{ marginBottom: '1rem' }}>
            <label className="label">Full Name</label>
            <div style={{ position: 'relative' }}>
              <User size={18} style={{ position: 'absolute', left: '1rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--text-secondary)' }} />
              <input
                type="text"
                className="glass-input"
                style={{ paddingLeft: '2.5rem' }}
                value={fullName}
                onChange={(e) => setFullName(e.target.value)}
                required
                placeholder="John Doe"
              />
            </div>
          </div>

          <div style={{ marginBottom: '1rem' }}>
            <label className="label">Email Address</label>
            <div style={{ position: 'relative' }}>
              <Mail size={18} style={{ position: 'absolute', left: '1rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--text-secondary)' }} />
              <input
                type="email"
                className="glass-input"
                style={{ paddingLeft: '2.5rem' }}
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                placeholder="you@example.com"
              />
            </div>
          </div>

          <div style={{ marginBottom: '1rem' }}>
            <label className="label">Password</label>
            <div style={{ position: 'relative' }}>
              <Lock size={18} style={{ position: 'absolute', left: '1rem', top: '50%', transform: 'translateY(-50%)', color: 'var(--text-secondary)' }} />
              <input
                type="password"
                className="glass-input"
                style={{ paddingLeft: '2.5rem' }}
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                placeholder="••••••••"
                minLength={6}
              />
            </div>
          </div>

          <div style={{ marginBottom: '1.5rem' }}>
            <label className="label">Role</label>
            <select
              className="glass-input"
              value={role}
              onChange={(e) => setRole(e.target.value)}
              style={{ appearance: 'none', backgroundColor: 'rgba(15, 23, 42, 0.8)' }}
            >
              <option value="pasien">Pasien</option>
              <option value="dokter">Dokter</option>
              <option value="admin">Admin</option>
            </select>
          </div>

          <button type="submit" className="glass-button" style={{ width: '100%' }} disabled={loading}>
            {loading ? <div className="loader"></div> : 'Register'}
          </button>
        </form>

        <div style={{ textAlign: 'center', marginTop: '1.5rem', fontSize: '0.875rem' }}>
          <span style={{ color: 'var(--text-secondary)' }}>Already have an account? </span>
          <Link to="/login" style={{ color: 'var(--primary)', textDecoration: 'none', fontWeight: 600 }}>Login here</Link>
        </div>
      </div>
    </div>
  );
}
