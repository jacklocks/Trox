# frozen_string_literal: true

class CreateTools < ActiveRecord::Migration[7.0]
  def change
    create_table :tools do |t|
      t.string :title
      t.text :description
      t.string :pic
      t.boolean :loan
      t.string :location
      t.decimal :caution
      t.string :condition

      t.timestamps
    end
  end
end
