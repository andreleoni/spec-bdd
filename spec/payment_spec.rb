require_relative './spec_helper.rb'
require_relative '../app/payment.rb'

RSpec.describe Payment do
  context "SENDO o sistema, 
           EU QUERO validar o pagamento de um ticket (Compra da passagem) via boleto,
           PARA QUE o ticket seja validado e o cliente receba notificação de cartão de embarque" do

    it 'Deve receber a baixa do boleto pelo banco' do
      # DADO QUE pagamento foi efetuado,
      # QUANDO vou validar o pagamento do ticket,
      # ENTÃO a reserva do ticket será efetuada.
      #   E o cliente receberá notificação com o cartão de embarque
    end
  
    it 'Não deve receber a baixa do boleto pelo banco' do
      # DADO QUE pagamento não foi efetuado em até 48hrs,
      # QUANDO vou validar o pagamento do ticket,
      # ENTÃO a reserva do ticket, será cancelada.
      #   E o cliente receberá notificação de que a reserva foi cancelada.
    end
  end
end
