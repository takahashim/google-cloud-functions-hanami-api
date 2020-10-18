# frozen_string_literal: true

require "hanami/api"

class App < Hanami::API
  get "/:id" do
    "Hello, #{params[:id]}!"
  end
end

FunctionsFramework.on_startup do |function|
 set_global :app, App.new
end

FunctionsFramework.http "hanami_api_example" do |request|
  global(:app).call request.env
end

