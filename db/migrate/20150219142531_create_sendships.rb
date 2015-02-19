class CreateSendships < ActiveRecord::Migration

  def change
    create_table :sendships do |t|
      t.timestamps

      t.references :sender,   index: true
      t.references :receiver, index: true
    end

    add_index :sendships, [:sender_id, :receiver_id]
  end

end
