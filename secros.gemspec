Gem::Specification.new do |s|
  s.name = 'secros'
  s.version = '0.1.2'
  s.authors = ['Tetsuri Moriya']
  s.email = ['tetsuri.moriya@gmail.com']
  s.summary = 'Secrets management gem'
  s.description = 'You can manage all your secrets in one place.'
  s.homepage = 'https://bitbucket.org/pandora2000/secros'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")
  s.executables = ['secros']
  s.add_development_dependency 'rspec', '~> 0'
  s.add_runtime_dependency 'activesupport', '~> 0'
end
