class CreateOffersUsers < ActiveRecord::Migration
  def change
    create_table :offers_users do |t|
    t.integer :user_id
    t.integer :offer_id

    t.timestamps null: false
    end

    add_index :offers_users, ["offer_id","user_id"]
  end
end
