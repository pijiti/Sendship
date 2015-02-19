class Store < ActiveRecord::Base
  has_many :sendships, foreign_key: 'sender_id', dependent: :nullify
  has_many :recivers,   through: :sendships, source: :receiver

  has_many :rev_sendships, class_name:  'Sendship', foreign_key: 'receiver_id', dependent: :nullify
  has_many :senders,       through: :rev_sendships, source: :sender

  has_many :batches, dependent: :nullify
end
