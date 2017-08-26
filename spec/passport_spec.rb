require 'rspec'
require 'date'
require_relative '../app/passport.rb'

RSpec.describe Passport  do
  context 'SENDO usuário logado, QUANDO vou criar uma passagem' do   
    it 'com dados inválidos, DEVO receber o retorno de que dados não conferem' do
      expect(Passport.create(DateTime.parse('28/08/2017'), DateTime.parse('26/08/2017'))).to eql("Data de chegada nao pode ser menor que data de saída")
    end
    
    it 'com dados válidos, DEVO receber o retorno de que a passagem foi criada com sucesso' do
      expect(Passport.create(DateTime.parse('28/08/2017'), DateTime.parse('28/09/2017'))).to eql("Passagem criada com sucesso")
    end
  end
end
