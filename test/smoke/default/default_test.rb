# # encoding: utf-8

# Inspec test for recipe apache::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

unless os.windows?
  describe user('root') do
    it { should exist }
    skip 'This is an example test, replace with your own test.'
  end
end

describe port(80) do
  it { should be_listening }
  skip 'This is an example test, replace with your own test.'
end

describe file('/var/www/html/index.html') do
  its('content') { should eq '<h1>Hello World</h1>' }
end

describe command('curl localhost') do
   its('exit_status') { should eq 0 }
end
