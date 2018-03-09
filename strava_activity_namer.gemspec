
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "strava_activity_namer/version"

Gem::Specification.new do |spec|
  spec.name          = "strava_activity_namer"
  spec.version       = StravaActivityNamer::VERSION
  spec.authors       = ["Tim Pile"]
  spec.email         = ["timpiledesign@gmail.com"]

  spec.summary       = %q{A simple Natural Language Generator (NLG) tool for naming Strava activities.}
  spec.description   = %q{Strava Activity Namer connects to the Strava API to rename a boring default activity name based on the user's activity history and some other data analysis. NOTE: This gem is still in development and is not fully functionaly yet.}
  spec.homepage      = "https://github.com/timpile/strava_activity_namer"
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

  spec.add_runtime_dependency "strava-api-v3", '~> 0.7.0'
  spec.add_runtime_dependency "omniauth-strava", '~> 0.0.6'
  spec.add_runtime_dependency "json"

end
