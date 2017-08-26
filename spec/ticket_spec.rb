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
             
      expect(Ticket.create(DateTime.parse('28/08/2017'), DateTime.parse('26/08/2017'))).to eql("Data de chegada nao pode ser menor que data de saída")
    end       
  end

  context "SENDO o sistema, 
           EU QUERO reservar um ticket com a companhia,
           PARA QUE o ticket fique reservado na aplicação e na companhia até a confirmação de pagamento" do

    it 'Deve avisar a companhia para reservar uma passagem' do
    end
  end
end
