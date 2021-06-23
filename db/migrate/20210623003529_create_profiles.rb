class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :hire_date
      t.string :social_media
      t.string :headshots
      t.string :license
      t.string :education
      t.string :practice
      t.string :area

      t.timestamps
    end
  end
end
