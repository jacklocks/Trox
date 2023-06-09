# frozen_string_literal: true

class AddLastnameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :lastname, :string
  end
end
