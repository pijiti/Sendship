class Sendship < ActiveRecord::Base
  belongs_to :batch
  belongs_to :sender, class_name: 'Store'
  belongs_to :receiver, class_name: 'Store'

  after_save :update_batch_owner!

  private

    def update_batch_owner!
      batch.update! store: receiver
    end
end
