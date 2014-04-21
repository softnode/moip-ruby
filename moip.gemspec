# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name = %q{duke-moip}
  gem.version = "0.2.0"

  gem.authors = ["Guilherme Nascimento", "Duke Khaos"]
  gem.date = %q{2010-11-10}
  gem.description = %q{Gem para utilização da API MoIP}
  gem.email = %q{guilherme.ruby@gmail.com duke.m16@gmail.com}
  gem.summary = %q{Gem para utilização da API MoIP}

  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- spec/*.rb`.split("\n")

  gem.homepage = %q{http://github.com/moiplabs/moip-ruby}
  gem.require_paths = ["lib"]

  gem.rdoc_options = ["--charset=UTF-8"]
  gem.extra_rdoc_files = [ "LICENSE", "README.markdown"]

  gem.add_development_dependency(%q<rspec>, [">= 2.1.0"])

  gem.add_runtime_dependency(%q<nokogiri>, ["~> 1.6.1"])
  gem.add_runtime_dependency(%q<httparty>, ["~> 0.12.0"])

  gem.add_runtime_dependency(%q<activesupport>, [">= 2.3.2"])
end
