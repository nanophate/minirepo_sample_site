app = Rack::Builder.app do
  use Rack::Static, urls: [""], root: 'app'
  use Rack::Chunked
  run lambda { |env| [200, {'Content-Type' => 'text/html'}, File.open('app', File::RDONLY)] }
end

run app
