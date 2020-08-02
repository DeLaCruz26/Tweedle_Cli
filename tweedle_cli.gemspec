require_relative 'lib/tweedle_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "tweedle_cli"
  spec.version       = TweedleCli::VERSION
  spec.authors       = ["DeLaCruz26"]
  spec.email         = ["dametrik.fick@gmail.com"]

  spec.summary       = %q{Hemp Flower App}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/DeLaCruz26"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DeLaCruz26"
  spec.metadata["changelog_uri"] = "https://github.com/DeLaCruz26"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"
end
