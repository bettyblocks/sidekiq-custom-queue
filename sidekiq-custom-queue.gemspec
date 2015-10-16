# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sidekiq/custom_queue/version'

Gem::Specification.new do |spec|
  spec.name          = 'sidekiq-custom-queue'
  spec.version       = Sidekiq::CustomQueue::VERSION
  spec.authors       = ['Evan Sagge']
  spec.email         = ['evansagge@gmail.com']

  spec.summary       = 'A Sidekiq plugin for specifying custom/dynamic queues based on the message passed to Sidekiq'
  spec.description = 'A Sidekiq plugin for specifying custom/dynamic queues based on the message passed to Sidekiq'
  spec.homepage      = 'https://www.github.com/evansagge/sidekiq-custom-queues'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    fail 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'sidekiq', '~> 3'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
end
