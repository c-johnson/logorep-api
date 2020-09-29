class CreateJurisdictions < ActiveRecord::Migration[6.0]
  def change
    create_table :jurisdictions do |t|
      t.string :name
      t.string :state
      t.string :city_county

      t.string :website_main
      t.string :website_meeting
      t.string :website_meeting_cc

      t.timestamps
    end
  end
end
