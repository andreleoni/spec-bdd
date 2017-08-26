require_relative './spec_helper.rb'
require_relative '../app/ticket.rb'

RSpec.describe Ticket  do
  context "SENDO usuário logado, 
           EU QUERO comprar uma passagem,
           PARA QUE eu viaje da origem para o destino selecionado com as datas preestabelecidas" do

    it 'Deve receber mensagem de que a data é inválida' do
      # DADO QUE informo data de chegada inferior a data de partida,
      # QUANDO clico em comprar passagem
      # ENTÃO recebo mensagem de que a data é inválida.             
    end       
  end

  context "SENDO o sistema, 
           EU QUERO reservar um ticket com a companhia,
           PARA QUE o ticket fique reservado na aplicação e na companhia até a confirmação de pagamento" do

    it 'Deve avisar a companhia para reservar uma passagem' do
      # DADO QUE o ticket foi cadastrado,
      # QUANDO ele gerar o boleto de pagamento,
      # ENTÃO reservo a passagem com a companhia aerea.
    end
  end
end
