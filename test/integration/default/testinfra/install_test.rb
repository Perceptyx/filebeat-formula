title 'Verify filebeat is running'

describe package('filebeat') do
    it { should be_installed }
end

