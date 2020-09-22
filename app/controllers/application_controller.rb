class ApplicationController < ActionController::API

  def hello
    # @response = {sup: "fam"}

    s = File.read("db/fs/meetings.json")
    obj = JSON.parse(s)
    @response = obj

    render json: @response, status: status

    # File.open("db/fs/meetings.json", 'w') do |f|
    #   f.write(@response.to_json)
    # end
  end
end
