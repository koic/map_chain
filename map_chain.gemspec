$:.push File.expand_path('../lib', __FILE__)

require 'map_chain/version'

Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.name = 'map_chain'
  s.summary = "%i(foo bar).map_chain('to_s.to_sym') #=> %i(foo bar).map(&:to_s).map(&:to_sym)"
  s.description = "%i(foo bar).map_chain('to_s.to_sym') #=> %i(foo bar).map(&:to_s).map(&:to_sym)"

  s.version = MapChain::VERSION

  s.license = 'MIT'

  s.authors = ['Koichi ITO']
  s.email = 'koic.ito@gmail.com'
  s.homepage = 'http://github.com/koic/map_chain'

  s.files = Dir[
    'README.md',
    'lib/**/*',
    'LICENSE'
  ]
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.0.0'

  s.add_development_dependency('rspec', '>= 3.0.0')
end
