class CreateMeetings < ActiveRecord::Migration[6.0]
  def change
    create_table :meetings do |t|
      t.string :date
      t.string :time
      t.string :location

      t.string :agenda_link
      t.string :minutes_link
      t.string :livestream_link

      t.integer :jurisdiction_id

      t.timestamps
    end

    # add_foreign_key :articles, :authors
    add_foreign_key :meetings, :jurisdictions
  end
end
