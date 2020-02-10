class CreateUpvotes < ActiveRecord::Migration[5.2]
  def change
    create_table :upvotes do |t|
      t.references :user
      t.references :book

      t.timestamps
    end
  end
end
