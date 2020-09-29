class CreateCouncilmembers < ActiveRecord::Migration[6.0]
  def change
    create_table :councilmembers do |t|
      t.string :name
      t.string :phone_number
      t.string :email
      t.string :twitter
      t.string :facebook
      t.string :instagram

      t.string :position

      t.integer :jurisdiction_id

      t.timestamps
    end

    # add_foreign_key :articles, :authors
    add_foreign_key :councilmembers, :jurisdictions
  end
end
