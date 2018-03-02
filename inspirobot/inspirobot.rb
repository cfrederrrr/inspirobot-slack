require "net/http"
require "json"
require "sinatra/base"

class Inspirobot < Sinatra::Base
  before do
    content_type "application/json"
  end

  get "/inspirobot" do
    {
      "response_type" => "in_channel",
      "text" => Net::HTTP.get("inspirobot.me", "/api?generate=true")
    }
      .to_json
  end
end
