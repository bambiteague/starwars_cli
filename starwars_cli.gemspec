require_relative 'lib/starwars_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "starwars_cli"
  spec.version       = StarwarsCli::VERSION
  spec.authors       = ["bambi teague"]
  spec.email         = ["teeegsa@gmail.com"]

  spec.summary       = %q{small app to learn more about the planets of star wars}
  spec.homepage      = "https://swapi.dev/api/planets/"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "git@github.com:bambiteague/star-wars-planet-cli.git"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bambiteague/star-wars-planet-cli.git"
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.require_paths = ["spec"]
end
