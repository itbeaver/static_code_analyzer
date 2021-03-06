# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'static_code_analyzer/version'

Gem::Specification.new do |spec|
  spec.name          = 'static_code_analyzer'
  spec.version       = StaticCodeAnalyzer::VERSION
  spec.authors       = ['Alexandr Bobrov']
  spec.email         = ['al.bobrov@itbeaver.co']

  spec.summary       = 'Analyze project ruby code'
  spec.description   = 'Analyze project ruby code'
  spec.homepage      = 'https://github.com/itbeaver/static_code_analyzer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'pronto', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-brakeman', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-coffeelint', '~> 0.6.0'
  spec.add_runtime_dependency 'pronto-flay', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-eslint', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-haml', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-rails_best_practices', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-reek', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-rubocop', '~> 0.9.0'
  spec.add_runtime_dependency 'pronto-scss', '~> 0.9.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 12.0'
  spec.add_development_dependency 'rspec'
end
