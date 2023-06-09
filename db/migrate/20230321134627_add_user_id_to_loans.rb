# frozen_string_literal: true

class AddUserIdToLoans < ActiveRecord::Migration[7.0]
  def change
    add_reference :loans, :user, foreign_key: true
  end
end
