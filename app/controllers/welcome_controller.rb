class WelcomeController < ApplicationController


  def index
    response = HTTParty.get('http://127.0.0.1/allData.json')
    puts response.body, response.code, response.message, response.headers.inspect
    @test = 'sdfsdf'
  end
end
