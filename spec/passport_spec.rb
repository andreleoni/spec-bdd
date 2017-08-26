require 'rspec'
require 'date'
require_relative '../app/passport.rb'

RSpec.describe Passport  do
  context 'SENDO usuário logado, 
           DEVO poder criar uma passagem 
           PARA que o sistema faça a compra com a companhia aérea' do   
    it 'DADO QUE eu tenha um usuário cadastrado no sistema com permissões de administrador 
        QUANDO colocar as informações de usuário e senha 
        ENTÃO entrará na tela de permissões administrativas.' do
      expect(Passport.create(DateTime.parse('28/08/2017'), DateTime.parse('26/08/2017'))).to eql("Data de chegada nao pode ser menor que data de saída")
    end
    
    it 'com dados válidos, DEVO receber o retorno de que a passagem foi criada com sucesso' do
      expect(Passport.create(DateTime.parse('28/08/2017'), DateTime.parse('28/09/2017'))).to eql("Passagem criada com sucesso")
    end
  end
end

RSpec.describe Payment do
end

RSpec.describe Advertisement do
end
