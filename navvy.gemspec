# Generated by jeweler
# DO NOT EDIT THIS FILE
# Instead, edit Jeweler::Tasks in Rakefile, and run `rake gemspec`
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{navvy}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jeff Kreeftmeijer"]
  s.date = %q{2010-01-06}
  s.description = %q{Simple background job processor inspired by delayed_job, but aiming for database agnosticism.}
  s.email = %q{jeff@kreeftmeijer.nl}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.textile"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.textile",
     "Rakefile",
     "VERSION",
     "lib/job/mongo_mapper.rb",
     "lib/navvy.rb",
     "navvy.gemspec",
     "spec/navvy_spec.rb",
     "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/jeffkreeftmeijer/navvy}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Simple background job processor inspired by delayed_job, but aiming for database agnosticism.}
  s.test_files = [
    "spec/navvy_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bacon>, [">= 1.1.0"])
      s.add_development_dependency(%q<yard>, [">= 0.5.2"])
      s.add_development_dependency(%q<metric_fu>, [">= 1.1.6"])
      s.add_development_dependency(%q<machinist>, [">= 1.0.6"])
      s.add_development_dependency(%q<machinist_mongomapper>, [">= 0.9.7"])
    else
      s.add_dependency(%q<bacon>, [">= 1.1.0"])
      s.add_dependency(%q<yard>, [">= 0.5.2"])
      s.add_dependency(%q<metric_fu>, [">= 1.1.6"])
      s.add_dependency(%q<machinist>, [">= 1.0.6"])
      s.add_dependency(%q<machinist_mongomapper>, [">= 0.9.7"])
    end
  else
    s.add_dependency(%q<bacon>, [">= 1.1.0"])
    s.add_dependency(%q<yard>, [">= 0.5.2"])
    s.add_dependency(%q<metric_fu>, [">= 1.1.6"])
    s.add_dependency(%q<machinist>, [">= 1.0.6"])
    s.add_dependency(%q<machinist_mongomapper>, [">= 0.9.7"])
  end
end