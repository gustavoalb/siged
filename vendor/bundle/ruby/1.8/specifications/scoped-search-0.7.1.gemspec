# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{scoped-search}
  s.version = "0.7.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["slainer68"]
  s.date = %q{2010-09-13}
  s.description = %q{Easily implement search forms and column ordering based on your models scopes. For Rails 3, compatible with ActiveRecord and Mongoid.}
  s.email = %q{slainer68@gmail.com}
  s.extra_rdoc_files = ["LICENSE", "README.textile"]
  s.files = ["LICENSE", "README.textile"]
  s.homepage = %q{http://github.com/novagile/scoped-search}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Easily implement search forms and column ordering based on your models scopes}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 1.2.9"])
    else
      s.add_dependency(%q<rspec>, [">= 1.2.9"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 1.2.9"])
  end
end
