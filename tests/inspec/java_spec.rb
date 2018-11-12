# Check java is functionnal

control 'java-01' do
  impact 1.0
  title 'Java'
  desc 'Java should be functionnal'
  if os.family != 'windows'
    describe command('java -version') do
      its('exit_status') { should eq 0 }
    end
  elsif os.family == 'windows'
    describe command('java --version') do
      its('exit_status') { should eq 0 }
    end
  end
end
