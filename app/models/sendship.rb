class Sendship < ActiveRecord::Base
  belongs_to :sender, class_name: 'Store'
  belongs_to :receiver, class_name: 'Store'

  has_one :batch, dependent: :nullify
end
