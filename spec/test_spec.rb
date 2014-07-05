require 'spec_helper'

describe 'test' do
  it 'should succeed' do
    generate_path = "#{root_path}/tmp/secros_generate_spec_dummy#{SecureRandom.uuid}"
    `mkdir -p #{File.dirname(generate_path)}`
    `rm -rf #{generate_path}`
    `ruby #{File.join(root_path, 'lib', 'generate.rb')} #{generate_path}`
    `cp #{File.join(root_path, 'spec', 'secrets.yml')} #{generate_path}/secrets.yml`
    secros = Secros.new(generate_path)
    secros.values[:test_key].should eq('test_value')
    secros.files[:test_file_key].should eq("#{generate_path}/files/test_file_value")
    `rm -rf #{generate_path}`
  end
end
