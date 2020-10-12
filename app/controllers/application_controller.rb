require 'open-uri'

class ApplicationController < ActionController::API

  def record
    # @response = {sup: "fam"}


    url = "http://cityclerk.kcmo.org/liveweb/Groups/Group.aspx?q=S8XiC%2fRs0WwU77m0O6H8FzyApAkUOfuYcNq%2blMKnkV1La39jbh4Sxos8%2bIqtvChp"

    # doc = Nokogiri::HTML(url)
    doc = Nokogiri::HTML(URI.open(url))

    node = doc.css("#_ctl0_ContentPlaceHolder1_lblMeetings")

    # reader = Nokogiri::XML::Reader(url)

    s = File.read("db/fs/meetings.json")
    obj = JSON.parse(s)
    @response = obj

    render json: @response, status: status

    # File.open("db/fs/meetings.json", 'w') do |f|
    #   f.write(@response.to_json)
    # end
  end

  def data

    @juris = Jurisdiction.all

    render json: @juris

    # render html:

    # db = SQLite3::Database.open "db/logorep-db.sqlite3"
    # result = db.execute "SELECT * FROM jurisdictions;"
    #
    # db.close
    #
    # binding.pry

  end
end
