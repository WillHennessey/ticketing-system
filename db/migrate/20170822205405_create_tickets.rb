class CreateTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :tickets do |t|
      t.integer :priority, unsigned: true, null: false, default: 4
      t.string :type, limit: 255
      t.string :abstract, limit: 255, null: false
      t.text :details, limit: 65535, null: false
      t.timestamps
    end
  end
end
