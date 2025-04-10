# -*- ruby -*-
# encoding: utf-8

require File.expand_path("lib/google/cloud/video_intelligence/version", __dir__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud-video_intelligence"
  gem.version       = Google::Cloud::VideoIntelligence::VERSION

  gem.authors       = ["Google LLC"]
  gem.email         = "googleapis-packages@google.com"
  gem.description   = "Detects objects, explicit content, and scene changes in videos. It also specifies the region for annotation and transcribes speech to text. Supports both asynchronous API and streaming API."
  gem.summary       = "API Client library for the Cloud Video Intelligence API"
  gem.homepage      = "https://github.com/googleapis/google-cloud-ruby"
  gem.license       = "Apache-2.0"

  gem.platform      = Gem::Platform::RUBY

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "AUTHENTICATION.md", "LICENSE.md", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 3.0"

  gem.add_dependency "google-cloud-core", "~> 1.6"
  gem.add_dependency "google-cloud-video_intelligence-v1", "~> 1.2"
end
