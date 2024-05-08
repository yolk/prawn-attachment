# frozen_string_literal: true

require_relative "lib/prawn/attachment/version"

Gem::Specification.new do |spec|
  spec.name          = "prawn-attachment"
  spec.version       = Prawn::Attachment::VERSION
  spec.authors       = ["David Lilue", "Sam Lown"]
  spec.email         = ["david.lilue@invopop.com", "sam.lown@invopop.com"]

  spec.summary       = "Attach files to Prawn generated PDFs according to PDF/A-3"
  spec.homepage      = "https://github.com/invopop/prawn-attachment"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.5.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/invopop/prawn-attachment"
  spec.metadata["changelog_uri"] = "https://github.com/invopop/prawn-attachment"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "prawn", "~> 2.4"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
