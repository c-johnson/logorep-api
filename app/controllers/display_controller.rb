class DisplayController < ActionController::Base
  def index
    # render :html

    @juris = Jurisdiction.all
    @council = Councilmember.all
  end
end
