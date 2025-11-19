Gem::Specification.new do |spec|
  spec.name          = "software_testing_mentor"
  spec.version       = "1.0.0"
  spec.authors       = ["Feibert Guzman"]
  spec.email         = ["feibert@example.com"]
  spec.description   = "Gema interactiva para enseñanza de pruebas de software con integración Gemini"
  spec.summary       = "Software Testing Mentor - Aprende testing con IA Gemini"
  spec.homepage      = "https://github.com/feibertguzman-dev/software_testing_mentor"
  spec.license       = "MIT"
  spec.files         = Dir["lib/**/*", "spec/**/*", "README.md", "LICENSE"]
  spec.require_paths = ["lib"]

  spec.add_dependency "google-generativeai", "~> 1.0"
  spec.add_dependency "colorize", "~> 1.1"
  spec.add_dependency "thor", "~> 1.3"
  
  spec.add_development_dependency "rspec", "~> 3.12"
end
