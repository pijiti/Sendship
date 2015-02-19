## Stores

center_store = Store.create! name: 'Center Store'
branch_store = Store.create! name: 'Branch Store'


## Batches

Batch.create! name: 'A List', store: center_store
Batch.create! name: 'B List', store: center_store
Batch.create! name: 'C List', store: branch_store
