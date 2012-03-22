# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{barby}
  s.version = "0.5.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tore Darell"]
  s.date = %q{2011-08-18}
  s.description = %q{Barby creates barcodes.}
  s.email = %q{toredarell@gmail.com}
  s.extra_rdoc_files = ["README"]
  s.files = ["README"]
  s.homepage = %q{http://toretore.github.com/barby}
  s.post_install_message = %q{
*** NEW REQUIRE POLICY ***"
Barby no longer require all barcode symbologies by default. You'll have
to require the ones you need. For example, if you need EAN-13,
require 'barby/barcode/ean_13'; For a full list of symbologies and their
filenames, see README.
***

}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{barby}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{The Ruby barcode generator}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
