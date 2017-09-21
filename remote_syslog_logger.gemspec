Gem::Specification.new do |s|
  s.name              = 'remote_syslog_logger_tcp_barthv'
  s.version           = '1.0.4'
  s.summary     = "Ruby Logger that sends directly to a remote syslog endpoint"
  s.description = "A ruby Logger that sends UDP directly to a remote syslog endpoint"

  s.authors  = ["Eric Lindvall", "Barthelemy Vessemont"]
  s.email    = ['eric@5stops.com', "bvessemont@gmail.com"]
  s.homepage = 'https://github.com/BarthV/remote_syslog_logger_tcp'

  s.files         = `git ls-files -z`.split("\x0")
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths = %w[lib]

  s.add_runtime_dependency "syslog_protocol_barthv"

  s.add_development_dependency "bundler", "~> 1.6"
  s.add_development_dependency "rake"
  s.add_development_dependency "test-unit"
end
