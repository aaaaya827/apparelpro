# frozen_string_literal: true

class CreateManuals < ActiveRecord::Migration[7.1]
  def change
    create_table :manuals do |t|
      t.string :title
      t.text :content
      t.string :category

      t.timestamps
    end
  end
end
