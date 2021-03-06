# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'homestead-manager/version'

Gem::Specification.new do |gem|
  gem.name          = 'homestead-manager'
  gem.version       = VagrantPlugins::HomesteadManager::VERSION
  gem.authors       = ['Shawn Dahlen','Seth Reeser','Charles Peterson']
  gem.email         = ['shawn@dahlen.me','info@devopsgroup.io','artistan@artistan.org']
  gem.description   = %q{A Vagrant plugin that manages homestead /etc/hosts files && ssl certificates within a multi-machine environment}
  gem.summary       = gem.description
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'rake'
end
