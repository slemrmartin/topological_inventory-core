$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "topological_inventory/core/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "topological_inventory-core"
  s.version     = TopologicalInventory::Core::VERSION
  s.authors     = ["Adam Grare"]
  s.email       = ["agrare@redhat.com"]
  s.homepage    = "https://github.com/RedHatInsights/topological_inventory-core"
  s.summary     = "Core Models and Schema for the Topological Inventory Service."
  s.description = "Core Models and Schema for the Topological Inventory Service.."
  s.license     = "Apache-2.0"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]

  s.add_runtime_dependency "acts_as_tenant",    "~> 0.4.4"
  s.add_runtime_dependency "inventory_refresh", "~> 0.3.2"
  s.add_runtime_dependency "manageiq-messaging", "~> 0.1.0"
  s.add_runtime_dependency "manageiq-password",  "~> 0.3"
  s.add_runtime_dependency "pg", "> 0"
  s.add_runtime_dependency "rails", "~> 5.2.2"
  s.add_runtime_dependency "sprockets", "< 4.0.0" # for ruby 2.4 compatibility
  s.add_runtime_dependency "rest-client", ">= 1.8.0"

  s.add_development_dependency "active_record_doctor"
  s.add_development_dependency "rspec-rails", "~>3.8"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "webmock"
end
