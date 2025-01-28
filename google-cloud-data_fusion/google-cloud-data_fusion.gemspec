# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/data_fusion/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-data_fusion"
  gem.version       = Google::Cloud::DataFusion::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Cloud Data Fusion is a fully managed, cloud-native, enterprise data integration service for quickly building and managing data pipelines."
  gem.summary       = "API Client library for the Cloud Data Fusion API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-data_fusion-v1", ">= 0.6", "< 2.a"
end
