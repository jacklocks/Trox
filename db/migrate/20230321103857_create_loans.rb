# frozen_string_literal: true

class CreateLoans < ActiveRecord::Migration[7.0]
  def change
    create_table :loans do |t|
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
