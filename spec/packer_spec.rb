require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"
require "brewcask_patch"

describe package('packer'), :if => os[:family] == 'darwin' do
  it { should be_installed.by('homebrew') }
end

describe command('which packer') do
  its(:exit_status) { should eq 0 }
end
