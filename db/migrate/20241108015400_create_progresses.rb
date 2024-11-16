class CreateProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :progresses do |t|
      t.integer :manual_id, null: false  # マニュアルID
      t.integer :user_id, null: false    # ユーザーID
      t.boolean :completed, default: false  # 完了フラグ
      t.integer :progress, default: 0       # 進捗率（0～100）

      t.timestamps
    end

    # 外部キー制約を追加
    add_foreign_key :progresses, :manuals, column: :manual_id
    add_foreign_key :progresses, :users, column: :user_id

    # ユーザーとマニュアルの組み合わせが一意であることを保証するインデックス
    add_index :progresses, [:user_id, :manual_id], unique: true
  end
end