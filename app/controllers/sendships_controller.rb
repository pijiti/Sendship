class SendshipsController < ApplicationController
  before_action :set_sender, only: :create

  def create
    @sendship = @sender.sendships.build sendship_params
    @sendship.batch = Batch.find params[:batch_id]

    @sendship.save!
  end


  private

    def sendship_params
      params.require(:sendship).permit :receiver_id
    end

    def set_sender
      @sender = Store.find params[:sender_id]
    end
end
