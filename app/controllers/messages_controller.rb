class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @demande = Demande.find(params[:demande_id])
    @message.user = current_user
    @message.demande = @demande
    @message.save!
    authorize @message
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
