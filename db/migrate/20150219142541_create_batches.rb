class CreateBatches < ActiveRecord::Migration

  def change
    create_table :batches do |t|
      t.string  :name

      t.timestamps
      t.references :sendship, index: true
      t.references :store,    index: true
    end
  end

end
