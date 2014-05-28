require "sinatra"
require "sinatra/base"
require "json"
require "uri"

class App < Sinatra::Base
  get "/my-route" do
    # Do stuff and return something like this
    { foo: "bar" }.to_json
  end
end
