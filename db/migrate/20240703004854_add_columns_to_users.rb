# frozen_string_literal: true

# This migration adds columns to users
class AddColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string, null: false, default: ''
  end
end
