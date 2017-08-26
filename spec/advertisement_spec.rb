require_relative './spec_helper.rb'
require_relative '../app/advertisement.rb'

RSpec.describe Advertisement do
  context "SENDO o sistema, 
           EU QUERO buscar promoções nas companhias aereas e notificar os usuários cadastrados das promoções disponíveis,
           PARA QUE aumente o número de vendas de tickets" do

    it 'Requisitos depromoção não atendem' do
      # DADO QUE exista promoções nas companhias,
      # QUANDO a diferença for menor ou igual a 5% de diferença de valor atual do ticket,
      # ENTÃO não será notificado o usuário
    end
  
    it 'Existe promoções nas companhias' do
      # DADO QUE exista promoções nas companhias,
      # QUANDO a diferença for maior que 5% de diferença atual do ticket,
      # ENTÃO será notificado o usuário da promoção
    end
  end
end
