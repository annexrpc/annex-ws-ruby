Gem::Specification.new do |s|
  s.name              = 'annex-ws'
  s.version           = '0.1.0'
  s.summary           = 'ruby annex websocket server'
  s.author            = 'Cameron Bytheway'
  s.email             = 'bytheway.cameron@gmail.com'
  s.homepage          = 'https://github.com/annexrpc/annex-ws-ruby'
  s.license           = 'MIT'

  s.require_paths     = %w[lib]

  s.files = %w[README.md] +
            Dir.glob('lib/**/*.rb')

  s.add_dependencies 'faye-websocket', '>= 0.9.2'
end
