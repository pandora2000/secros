Gem::Specification.new do |s|
  s.name = 'secros'
  s.version = '0.1.0'
  s.authors = ['Tetsuri Moriya']
  s.email = ['tetsuri.moriya@gmail.com']
  s.summary = 'Secrets management gem'
  s.description = 'You can manage all your secrets in one place.'
  s.homepage = 'https://bitbucket.org/pandora2000/secros'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")
  s.add_development_dependency 'rspec', '~> 0'
end
