# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: rakuna 0.7.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rakuna"
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Chris Olstrom"]
  s.date = "2015-08-06"
  s.description = "Rakuna provides mixins to simplify Webmachine development"
  s.email = "chris@olstrom.com"
  s.extra_rdoc_files = [
    "LICENSE",
    "README.markdown"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE",
    "README.markdown",
    "Rakefile",
    "VERSION",
    "lib/rakuna.rb",
    "lib/rakuna/content.rb",
    "lib/rakuna/content/json.rb",
    "lib/rakuna/content/validation.rb",
    "lib/rakuna/resource.rb",
    "lib/rakuna/resource/action.rb",
    "lib/rakuna/resource/collection.rb",
    "lib/rakuna/resource/item.rb",
    "lib/rakuna/storage.rb",
    "lib/rakuna/storage/redis.rb",
    "rakuna.gemspec",
    "spec/rakuna_spec.rb",
    "spec/spec_helper.rb"
  ]
  s.homepage = "http://github.com/colstrom/rakuna"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.8"
  s.summary = "Reusable Mixins for Webmachine-powered Applications"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<multi_json>, ["~> 1.11"])
      s.add_runtime_dependency(%q<json-schema>, ["~> 2.5"])
      s.add_runtime_dependency(%q<webmachine>, ["~> 1.4"])
      s.add_runtime_dependency(%q<redis>, ["~> 3.2"])
      s.add_development_dependency(%q<rspec>, ["~> 3.3"])
      s.add_development_dependency(%q<yard>, ["~> 0.8"])
      s.add_development_dependency(%q<bundler>, ["~> 1.10"])
      s.add_development_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_development_dependency(%q<simplecov>, ["~> 0.10"])
      s.add_development_dependency(%q<reek>, ["~> 3.1"])
      s.add_development_dependency(%q<roodi>, ["~> 5.0"])
      s.add_development_dependency(%q<flog>, ["~> 4.3"])
      s.add_development_dependency(%q<rubocop>, ["~> 0.33"])
      s.add_development_dependency(%q<inch>, ["~> 0.6"])
    else
      s.add_dependency(%q<multi_json>, ["~> 1.11"])
      s.add_dependency(%q<json-schema>, ["~> 2.5"])
      s.add_dependency(%q<webmachine>, ["~> 1.4"])
      s.add_dependency(%q<redis>, ["~> 3.2"])
      s.add_dependency(%q<rspec>, ["~> 3.3"])
      s.add_dependency(%q<yard>, ["~> 0.8"])
      s.add_dependency(%q<bundler>, ["~> 1.10"])
      s.add_dependency(%q<jeweler>, ["~> 2.0"])
      s.add_dependency(%q<simplecov>, ["~> 0.10"])
      s.add_dependency(%q<reek>, ["~> 3.1"])
      s.add_dependency(%q<roodi>, ["~> 5.0"])
      s.add_dependency(%q<flog>, ["~> 4.3"])
      s.add_dependency(%q<rubocop>, ["~> 0.33"])
      s.add_dependency(%q<inch>, ["~> 0.6"])
    end
  else
    s.add_dependency(%q<multi_json>, ["~> 1.11"])
    s.add_dependency(%q<json-schema>, ["~> 2.5"])
    s.add_dependency(%q<webmachine>, ["~> 1.4"])
    s.add_dependency(%q<redis>, ["~> 3.2"])
    s.add_dependency(%q<rspec>, ["~> 3.3"])
    s.add_dependency(%q<yard>, ["~> 0.8"])
    s.add_dependency(%q<bundler>, ["~> 1.10"])
    s.add_dependency(%q<jeweler>, ["~> 2.0"])
    s.add_dependency(%q<simplecov>, ["~> 0.10"])
    s.add_dependency(%q<reek>, ["~> 3.1"])
    s.add_dependency(%q<roodi>, ["~> 5.0"])
    s.add_dependency(%q<flog>, ["~> 4.3"])
    s.add_dependency(%q<rubocop>, ["~> 0.33"])
    s.add_dependency(%q<inch>, ["~> 0.6"])
  end
end

