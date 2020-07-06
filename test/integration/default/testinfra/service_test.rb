title 'Verify filebeat service'

describe service('filebeat') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end