class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
        t.string :name
        t.string :recipes
        t.string :username
        t.string :password_digest
    end
  end 
end
