class ResultadosController < ApplicationController
  def index
    ajax_results
  end

  def ajax_results
    @resultados=Cocinero.joins('left outer join votos on votos.cocinero_id=cocineros.id').group(:nombre).count('votos.id')
    @tot_users=User.where(:admin=>false).count
    @tot_votos=Voto.all.count
  end
end
