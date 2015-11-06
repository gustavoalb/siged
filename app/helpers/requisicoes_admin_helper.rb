# -*- encoding : utf-8 -*-
module RequisicoesAdminHelper
  def link_status(objeto)
    html = ""
    if objeto.status =="aguardando_liberacao"
      html+= "#{link_to "Liberar entrada", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'aguardando_tramites_internos'), :class => 'btn btn-sm btn-info'}"
    elsif objeto.status=="aguardando_tramites_internos"
      html+= "#{link_to "Finalizar Tramites Internos", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'aguardando_envio_a_sead'), :class => 'btn btn-sm btn-info'}"
    elsif objeto.status=="aguardando_envio_a_sead"
      html+= "#{link_to "Enviar à SEAD", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'aguardando_tramites_sead'), :class => 'btn btn-sm btn-info'}"
    elsif objeto.status=="aguardando_tramites_sead"
      html+= "#{link_to "Retornar à SEED (Concedida)", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'aguardando_recolhimento_de_portaria'), :class => 'btn btn-sm btn-info'}"
      html+= "#{link_to "Retornar à SEED (Não Concedida)", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'aguardando_notificacao_do_nao_concedimento'), :class => 'btn btn-sm btn-danger'}"
    elsif objeto.status=="aguardando_recolhimento_de_portaria"
      html+= "#{link_to "Marcar portaria como recolhida", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'finalizado_ok'), :class => 'btn btn-sm btn-info'}"
    elsif objeto.status=="aguardando_notificacao_do_nao_concedimento"
      html+= "#{link_to "Notificar Servidor", transicionar_requisicoes_admin_index_path(:requisicao_id=>objeto,:next_status=>'finalizado_nao_concedido'), :class => 'btn btn-sm btn-info'}"
    end
    return raw(html)
  end
end
