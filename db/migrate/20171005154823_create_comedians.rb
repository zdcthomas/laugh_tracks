class CreateComedians < ActiveRecord::Migration[5.1]
  def change
    create_table :comedians do |t|
      t.string :name
      t.integer :age
      t.integer :net_worth
    end
  end
end
