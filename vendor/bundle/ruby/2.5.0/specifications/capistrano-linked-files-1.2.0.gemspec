# -*- encoding: utf-8 -*-
# stub: capistrano-linked-files 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "capistrano-linked-files".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Runar Skaare Tveiten".freeze]
  s.date = "2016-06-26"
  s.description = "Adds tasks to upload your linked files and directories. ".freeze
  s.email = ["runar@tveiten.io".freeze]
  s.homepage = "https://github.com/runar/capistrano-linked-files".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.10".freeze
  s.summary = "Upload linked files and directories.".freeze

  s.installed_by_version = "2.7.10" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<capistrano>.freeze, ["~> 3.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_development_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.5"])
      s.add_development_dependency(%q<minitest>.freeze, ["~> 5.9"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 11.2"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.40"])
    else
      s.add_dependency(%q<capistrano>.freeze, ["~> 3.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
      s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.5"])
      s.add_dependency(%q<minitest>.freeze, ["~> 5.9"])
      s.add_dependency(%q<rake>.freeze, ["~> 11.2"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 0.40"])
    end
  else
    s.add_dependency(%q<capistrano>.freeze, ["~> 3.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.12"])
    s.add_dependency(%q<codeclimate-test-reporter>.freeze, ["~> 0.5"])
    s.add_dependency(%q<minitest>.freeze, ["~> 5.9"])
    s.add_dependency(%q<rake>.freeze, ["~> 11.2"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.40"])
  end
end
