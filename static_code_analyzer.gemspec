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
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  # spec.bindir        = 'exe'
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'pronto', '~> 0.5.3'
  spec.add_runtime_dependency 'pronto-brakeman', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-coffeelint', '~> 0.0.4'
  spec.add_runtime_dependency 'pronto-flay', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-jshint', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-haml', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-poper', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-rails_best_practices', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-rails_schema', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-reek', '~> 0.5.1'
  spec.add_runtime_dependency 'pronto-rubocop', '~> 0.5.0'
  spec.add_runtime_dependency 'pronto-scss', '~> 0.5.1'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
end
