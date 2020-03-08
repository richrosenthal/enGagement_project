class CreateGages < ActiveRecord::Migration
  def change
    create_table :gages do |t|
      t.string :name
      t.date :date_created
      t.date :due_date
      t.date :previous_due_date
      t.integer :user_id
    end
  end
end
