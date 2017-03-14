class CreateTurnovers < ActiveRecord::Migration
  def change
    create_table :turnovers do |t|
      t.integer :number
      t.string :name
      t.string :hyper_link
      t.float :opening_price
      t.float :highest_price
      t.float :lowest_price
      t.float :closing_yesterday
      t.float :closing_today
      t.integer :volumn
      t.float :change
      t.string :quote_change
      t.string :date

      t.timestamps
    end
  end
end
