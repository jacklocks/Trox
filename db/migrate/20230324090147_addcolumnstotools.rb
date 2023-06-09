# frozen_string_literal: true

class Addcolumnstotools < ActiveRecord::Migration[7.0]
  def change
    add_column :tools, :longitude, :float
    add_column :tools, :latitude, :float
  end
end
