require "rack"
require "middleman/rack"
require "rack/contrib/try_static"
require "./apis"

use App

use Rack::TryStatic,
  root: "build",
  urls: %w[/],
  try: [".html", "index.html", "/index.html"]

run lambda { |env|
  [
    404,
    {
      "Content-Type"  => "text/html",
      "Cache-Control" => "public, max-age=60"
    },
    File.open("build/404/index.html", File::RDONLY)
  ]
}
