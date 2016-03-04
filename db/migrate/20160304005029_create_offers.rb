class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :tittle
      t.float :value
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
