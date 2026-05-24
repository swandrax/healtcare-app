import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import { Shield, Database, HardDrive, Zap, Radio } from 'lucide-react';

export default function TestSuite() {
  const [logs, setLogs] = useState<string[]>([]);
  
  const addLog = (msg: string) => {
    setLogs(prev => [msg, ...prev].slice(0, 10)); // Keep last 10 logs
  }

  // --- Auth Testing ---
  const [authLoading, setAuthLoading] = useState(false);
  const handleTestAuth = async () => {
    setAuthLoading(true);
    addLog('Testing Auth: Attempting to sign up dummy user...');
    
    const dummyEmail = `testuser_${Date.now()}@zavora.com`;
    const dummyPassword = 'TestPassword123!';
    
    try {
      const { data, error } = await supabase.auth.signUp({
        email: dummyEmail,
        password: dummyPassword,
        options: { data: { full_name: 'Test User', role: 'admin' } }
      });
      
      if (error) throw error;
      addLog(`✅ Auth Success: User created (ID: ${data.user?.id})`);
      addLog(`👉 View Auth Logs in Supabase Dashboard -> Logs -> Auth`);
    } catch (err: any) {
      addLog(`❌ Auth Error: ${err.message}`);
    } finally {
      setAuthLoading(false);
    }
  };

  // --- Database Testing ---
  const [dbLoading, setDbLoading] = useState(false);
  const handleTestDb = async () => {
    setDbLoading(true);
    addLog('Testing Database: Reading from profiles table...');
    
    try {
      // Just try to fetch one profile to see if DB is accessible
      const { data, error } = await supabase
        .from('profiles')
        .select('*')
        .limit(1);
        
      if (error) throw error;
      addLog(`✅ DB Success: Fetched ${data.length} profile(s).`);
      addLog(`👉 View Postgres Logs in Supabase Dashboard -> Logs -> Postgres`);
    } catch (err: any) {
      addLog(`❌ DB Error: ${err.message}`);
    } finally {
      setDbLoading(false);
    }
  };

  // --- Storage Testing ---
  const [storageLoading, setStorageLoading] = useState(false);
  const handleTestStorage = async () => {
    setStorageLoading(true);
    addLog('Testing Storage: Uploading dummy text file...');
    
    try {
      const fileName = `test_file_${Date.now()}.txt`;
      const fileContent = new Blob(["This is a test file for Zavora storage."], { type: 'text/plain' });
      
      const { data, error } = await supabase.storage
        .from('testing_bucket')
        .upload(fileName, fileContent);
        
      if (error) throw error;
      addLog(`✅ Storage Success: Uploaded ${data.path}`);
      addLog(`👉 View Storage Logs in Supabase Dashboard -> Logs -> Storage`);
    } catch (err: any) {
      addLog(`❌ Storage Error: ${err.message} (Did you create the 'testing_bucket'?)`);
    } finally {
      setStorageLoading(false);
    }
  };

  // --- Edge Function Testing ---
  const [edgeLoading, setEdgeLoading] = useState(false);
  const handleTestEdge = async () => {
    setEdgeLoading(true);
    addLog('Testing Edge Function: Invoking zavora-ping...');
    
    try {
      const { data, error } = await supabase.functions.invoke('zavora-ping');
      
      if (error) throw error;
      addLog(`✅ Edge Success: Response: ${JSON.stringify(data)}`);
      addLog(`👉 View Edge Logs in Supabase Dashboard -> Edge Functions -> zavora-ping`);
    } catch (err: any) {
      addLog(`❌ Edge Error: ${err.message} (Did you deploy the function?)`);
    } finally {
      setEdgeLoading(false);
    }
  };

  // --- Real-time Testing ---
  const [realtimeActive, setRealtimeActive] = useState(false);
  const [latestPayload, setLatestPayload] = useState<any>(null);

  useEffect(() => {
    if (!realtimeActive) return;

    addLog('Testing Real-time: Subscribed to public:profiles channel.');
    const channel = supabase
      .channel('public:profiles_testing')
      .on('postgres_changes', { event: '*', schema: 'public', table: 'profiles' }, (payload) => {
        addLog(`🔥 Realtime Event: ${payload.eventType} on profiles!`);
        setLatestPayload(payload);
      })
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
      addLog('Testing Real-time: Unsubscribed from channel.');
    };
  }, [realtimeActive]);

  return (
    <div className="dashboard-container">
      <header className="dashboard-header">
        <h1 className="text-gradient">Supabase Integration Testing</h1>
        <p style={{ color: 'var(--text-secondary)' }}>Validate Auth, Database, Storage, Edge Functions, and Real-time functionality.</p>
      </header>

      <div style={{ display: 'grid', gridTemplateColumns: 'repeat(auto-fit, minmax(300px, 1fr))', gap: '1.5rem', marginBottom: '2rem' }}>
        
        {/* Auth Card */}
        <div className="glass-panel" style={{ padding: '1.5rem', borderRadius: '12px' }}>
          <div style={{ display: 'flex', alignItems: 'center', marginBottom: '1rem' }}>
            <Shield size={24} style={{ color: 'var(--primary)', marginRight: '0.75rem' }} />
            <h3 style={{ margin: 0 }}>Authentication</h3>
          </div>
          <p style={{ fontSize: '0.875rem', color: 'var(--text-secondary)', marginBottom: '1.5rem' }}>
            Registers a dummy user to generate Auth validation logs.
          </p>
          <button className="glass-button" onClick={handleTestAuth} disabled={authLoading} style={{ width: '100%' }}>
            {authLoading ? 'Testing...' : 'Test Auth Registration'}
          </button>
        </div>

        {/* Database Card */}
        <div className="glass-panel" style={{ padding: '1.5rem', borderRadius: '12px' }}>
          <div style={{ display: 'flex', alignItems: 'center', marginBottom: '1rem' }}>
            <Database size={24} style={{ color: 'var(--secondary)', marginRight: '0.75rem' }} />
            <h3 style={{ margin: 0 }}>Database & Data Match</h3>
          </div>
          <p style={{ fontSize: '0.875rem', color: 'var(--text-secondary)', marginBottom: '1.5rem' }}>
            Queries the profiles table to verify credentials and data matching policies.
          </p>
          <button className="glass-button" onClick={handleTestDb} disabled={dbLoading} style={{ width: '100%' }}>
            {dbLoading ? 'Testing...' : 'Test Database Query'}
          </button>
        </div>

        {/* Storage Card */}
        <div className="glass-panel" style={{ padding: '1.5rem', borderRadius: '12px' }}>
          <div style={{ display: 'flex', alignItems: 'center', marginBottom: '1rem' }}>
            <HardDrive size={24} style={{ color: 'var(--success)', marginRight: '0.75rem' }} />
            <h3 style={{ margin: 0 }}>Storage</h3>
          </div>
          <p style={{ fontSize: '0.875rem', color: 'var(--text-secondary)', marginBottom: '1.5rem' }}>
            Uploads a dummy text file to 'testing_bucket'.
          </p>
          <button className="glass-button" onClick={handleTestStorage} disabled={storageLoading} style={{ width: '100%' }}>
            {storageLoading ? 'Testing...' : 'Test Storage Upload'}
          </button>
        </div>

        {/* Edge Functions Card */}
        <div className="glass-panel" style={{ padding: '1.5rem', borderRadius: '12px' }}>
          <div style={{ display: 'flex', alignItems: 'center', marginBottom: '1rem' }}>
            <Zap size={24} style={{ color: 'var(--warning)', marginRight: '0.75rem' }} />
            <h3 style={{ margin: 0 }}>Edge Functions</h3>
          </div>
          <p style={{ fontSize: '0.875rem', color: 'var(--text-secondary)', marginBottom: '1.5rem' }}>
            Invokes the 'zavora-ping' Edge Function to test low-latency compute.
          </p>
          <button className="glass-button" onClick={handleTestEdge} disabled={edgeLoading} style={{ width: '100%' }}>
            {edgeLoading ? 'Testing...' : 'Test Edge Function'}
          </button>
        </div>

        {/* Real-time Card */}
        <div className="glass-panel" style={{ padding: '1.5rem', borderRadius: '12px' }}>
          <div style={{ display: 'flex', alignItems: 'center', marginBottom: '1rem' }}>
            <Radio size={24} style={{ color: 'var(--danger)', marginRight: '0.75rem' }} />
            <h3 style={{ margin: 0 }}>Real-time Subscriptions</h3>
          </div>
          <p style={{ fontSize: '0.875rem', color: 'var(--text-secondary)', marginBottom: '1.5rem' }}>
            Toggle listener for the profiles table. Update a profile in Supabase to see it here!
          </p>
          <div style={{ display: 'flex', gap: '1rem' }}>
            <button 
              className="glass-button" 
              onClick={() => setRealtimeActive(!realtimeActive)} 
              style={{ flex: 1, backgroundColor: realtimeActive ? 'rgba(239, 68, 68, 0.2)' : undefined }}
            >
              {realtimeActive ? 'Stop Listening' : 'Start Listening'}
            </button>
          </div>
          {latestPayload && (
            <div style={{ marginTop: '1rem', padding: '0.5rem', backgroundColor: 'rgba(0,0,0,0.3)', borderRadius: '4px', fontSize: '0.75rem', overflow: 'hidden' }}>
              <pre>{JSON.stringify(latestPayload, null, 2)}</pre>
            </div>
          )}
        </div>

      </div>

      {/* Observability Console */}
      <div className="glass-panel" style={{ padding: '1.5rem', borderRadius: '12px' }}>
        <h3 style={{ margin: '0 0 1rem 0' }}>Observability Console</h3>
        <div style={{ backgroundColor: 'rgba(15, 23, 42, 0.9)', padding: '1rem', borderRadius: '8px', minHeight: '200px', fontFamily: 'monospace', fontSize: '0.875rem', display: 'flex', flexDirection: 'column', gap: '0.5rem' }}>
          {logs.length === 0 ? (
            <span style={{ color: 'var(--text-secondary)' }}>Awaiting test executions...</span>
          ) : (
            logs.map((log, i) => (
              <div key={i} style={{ color: log.includes('✅') ? 'var(--success)' : log.includes('❌') ? 'var(--danger)' : log.includes('🔥') ? 'var(--warning)' : 'var(--text-secondary)' }}>
                {log}
              </div>
            ))
          )}
        </div>
      </div>
    </div>
  );
}
