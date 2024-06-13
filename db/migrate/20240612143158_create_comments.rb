class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.string :comment

      t.datetime :created_at
    end
  end
end
