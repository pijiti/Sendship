class Batch < ActiveRecord::Base
  belongs_to :store
  has_many :sendships, dependent: :nullify
end
