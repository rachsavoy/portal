class CreateOnboardings < ActiveRecord::Migration[6.1]
  def change
    create_table :onboardings do |t|

      t.timestamps
    end
  end
end
