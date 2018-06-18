lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'attributary/version'

Gem::Specification.new do |spec|
  spec.name          = 'Attributary'
  spec.version       = Attributary::VERSION
  spec.authors       = ['Josh Brody']
  spec.email         = ['josh@josh.mn']

  spec.summary       = 'Like ActiveModel::Attributes but less fluffy and more attribute-y.'
  spec.description   = 'Like `ActiveModel::Attributes` but less fluffy and more attribute-y.'
  spec.homepage      = 'https://github.com/joshmn/attributary'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end