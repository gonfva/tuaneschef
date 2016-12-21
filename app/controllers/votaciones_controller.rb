class VotacionesController < ApplicationController
  before_action :authenticate_user!

  def index
    @voto=Voto.where(:user=>current_user).first
    @cocineros=Cocinero.all
  end

  def create
    cocinero=Cocinero.find_by_id(params[:id])
    Voto.create(:cocinero=>cocinero, :user=>current_user)
    redirect_to root_url, notice: "Gracias por votar"

  end
  def borrar_votos
    redirect_to(root_url, notice: "Gracias por votar") unless current_user.admin?
    Voto.destroy_all
    redirect_to root_url, notice: "Hemos borrado todos los votos"
  end
end
