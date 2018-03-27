
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "light/markdown/version"

Gem::Specification.new do |spec|
  spec.name          = "light-markdown"
  spec.version       = Light::Markdown::VERSION
  spec.authors       = ["takahashi21"]
  spec.email         = ["takahashi@beanslight.com"]

  spec.summary       = "markdown renderer"
  spec.homepage      = "https://github.com/takahashi21/light-markdown"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
