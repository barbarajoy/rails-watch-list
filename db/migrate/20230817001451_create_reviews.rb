class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.string :text
      t.integer :rating
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
