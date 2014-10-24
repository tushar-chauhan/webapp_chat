class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.integer :user_id
      t.integer :recipient_id

      t.timestamps
    end
    add_index :conversations, :user_id
    add_index :conversations, :recipient_id
  end
end
