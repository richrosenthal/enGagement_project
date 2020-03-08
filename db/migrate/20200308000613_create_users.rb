class CreateUsers < ActiveRecord::Migration
  def change
    create_table :user do |t|
      t.string :name
      t.string :password
      t.string :email
    end
  end
end
