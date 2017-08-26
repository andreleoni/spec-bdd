require 'date'

class Passport
  def self.create(date, arrive_date)
    return "Data de chegada nao pode ser menor que data de saída" if arrive_date < date
    return "Passagem criada com sucesso"
  end
end
