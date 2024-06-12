class AddUserIdColumnToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :user_id, :integer, foreign_key: true #テーブル名, カラム名、データ型　あとはオプション
  end
end
