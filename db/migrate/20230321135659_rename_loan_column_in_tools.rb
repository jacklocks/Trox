# frozen_string_literal: true

class RenameLoanColumnInTools < ActiveRecord::Migration[7.0]
  def change
    rename_column :tools, :loan, :loaned
  end
end
