# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{wkhtmltopdf}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Research Information Systems, The University of Iowa"]
  s.autorequire = %q{name}
  s.date = %q{2010-01-25}
  s.email = %q{vpr-ris-developers@iowa.uiowa.edu}
  s.executables = ["wkhtmltopdf"]
  s.files = ["bin/wkhtmltopdf"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{Provides binaries for WKHTMLTOPDF project in an easily accessible package.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
