# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geonames/version'

Gem::Specification.new do |gem|
  gem.name     = "ruby-geonames"
  gem.version  = Geonames::VERSION
  gem.platform = Gem::Platform::RUBY
  gem.authors  = ["Adam Wisniewski"]
  gem.email    = ["adamw@tbcn.ca"]
  gem.homepage = "http://github.com/elecnix/ruby-geonames"
  gem.summary  = %q{Ruby library for Geonames Web Services (http://www.geonames.org/export/)}
  gem.licenses = ["Apache 2.0"]

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- spec/**/*_spec.rb`.split("\n")
  gem.require_paths    = ["lib"]
  gem.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.extra_rdoc_files = ["README.markdown"]

  gem.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if gem.respond_to? :required_rubygems_version=

  if gem.respond_to? :specification_version then

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      gem.add_development_dependency(%q<bundler>, ["~> 1.0"])
      gem.add_development_dependency(%q<fakeweb>, ["~> 1.3.0"])
      gem.add_development_dependency(%q<rake>)
      gem.add_development_dependency(%q<rspec>, ["~> 2.1"])
    else
      gem.add_dependency(%q<bundler>, ["~> 1.0"])
      gem.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
      gem.add_dependency(%q<rake>)
      gem.add_dependency(%q<rspec>, ["~> 2.1"])
    end
  else
    gem.add_dependency(%q<bundler>, ["~> 1.0"])
    gem.add_dependency(%q<fakeweb>, ["~> 1.3.0"])
    gem.add_dependency(%q<rake>)
    gem.add_dependency(%q<rspec>, ["~> 2.1"])
  end

end
