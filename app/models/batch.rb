class Batch < ActiveRecord::Base
  belongs_to :sendship
  belongs_to :store
end
