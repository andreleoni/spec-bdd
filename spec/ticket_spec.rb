require_relative './spec_helper.rb'
require_relative '../app/ticket.rb'

RSpec.describe Ticket  do
  context 'SENDO usuário logado, 
           DEVO poder criar uma passagem 
           PARA que o sistema faça a compra com a companhia aérea \n' do   

    it 'DADO QUE eu tenho um usuário e desejo comprar uma passagem,
        QUANDO clico em comprar passagem e informo data de chegada inferior a data de partida,
        ENTÃO receberá mensagem de que a data é inválida.' do
      expect(Ticket.create(DateTime.parse('28/08/2017'), DateTime.parse('26/08/2017'))).to eql("Data de chegada nao pode ser menor que data de saída")
    end
    
    it 'DADO QUE eu tenho um usuário e desejo comprar uma passagem,
        QUANDO clico em comprar passagem as informações corretas,
        ENTÃO receberá mensagem a passagem foi comprada com sucesso.' do
      expect(Ticket.create(DateTime.parse('28/08/2017'), DateTime.parse('28/09/2017'))).to eql("Passagem criada com sucesso")
    end
  end
end
