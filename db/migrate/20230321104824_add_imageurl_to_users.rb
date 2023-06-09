# frozen_string_literal: true

class AddImageurlToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :image_url, :string
  end
end
