# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{brazilian-rails}
  s.version = "3.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Marcos Tapaj\303\263s", "Celestino Gomes", "Andre Kupkosvki", "Vin\303\255cius Teles", "Felipe Barreto", "Rafael Walter", "Cassio Marques"]
  s.date = %q{2011-03-01}
  s.description = %q{O Brazilian Rails é um conjunto de gems para facilitar a vida dos programadores brasileiros.}
  s.email = ["tapajos@gmail.com", "tinorj@gmail.com", "kupkovski@gmail.com", "vinicius.m.teles@gmail.com", "felipebarreto@gmail.com", "rafawalter@gmail.com", "cassiommc@gmail.com"]
  s.homepage = %q{http://www.improveit.com.br/software_livre/brazilian_rails}
  s.require_paths = ["lib"]
  s.requirements = ["none"]
  s.rubyforge_project = %q{brazilian-rails}
  s.rubygems_version = %q{1.7.2}
  s.summary = %q{O Brazilian Rails é um conjunto de gems para facilitar a vida dos programadores brasileiros.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<brnumeros>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brdinheiro>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brcep>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brdata>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brhelper>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brstring>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brI18n>, ["= 3.0.4"])
      s.add_runtime_dependency(%q<brcpfcnpj>, ["= 3.0.4"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<brnumeros>, ["= 3.0.4"])
      s.add_dependency(%q<brdinheiro>, ["= 3.0.4"])
      s.add_dependency(%q<brcep>, ["= 3.0.4"])
      s.add_dependency(%q<brdata>, ["= 3.0.4"])
      s.add_dependency(%q<brhelper>, ["= 3.0.4"])
      s.add_dependency(%q<brstring>, ["= 3.0.4"])
      s.add_dependency(%q<brI18n>, ["= 3.0.4"])
      s.add_dependency(%q<brcpfcnpj>, ["= 3.0.4"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<brnumeros>, ["= 3.0.4"])
    s.add_dependency(%q<brdinheiro>, ["= 3.0.4"])
    s.add_dependency(%q<brcep>, ["= 3.0.4"])
    s.add_dependency(%q<brdata>, ["= 3.0.4"])
    s.add_dependency(%q<brhelper>, ["= 3.0.4"])
    s.add_dependency(%q<brstring>, ["= 3.0.4"])
    s.add_dependency(%q<brI18n>, ["= 3.0.4"])
    s.add_dependency(%q<brcpfcnpj>, ["= 3.0.4"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
