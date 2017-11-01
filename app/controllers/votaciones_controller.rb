class VotacionesController < ApplicationController
  before_action :authenticate_user!

  def index
    @voto=Voto.where(:user=>current_user).first
    @cocineros=Cocinero.all
  end

  def create
    cocinero=Cocinero.find_by_id(params[:id])
    Voto.create(:cocinero=>cocinero, :user=>current_user)
    redirect_to root_url, notice: "Thank you for your vote"

  end
  def borrar_votos
    redirect_to(root_url, notice: "Thank you for your vote") unless current_user.admin?
    Voto.destroy_all
    redirect_to root_url, notice: "We've deleted all the votes"
  end
end
