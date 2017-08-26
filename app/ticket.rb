require 'date'

class Ticket
  def self.create(date_from, date_to)
    return "Data de chegada nao pode ser menor que data de saída" if  date_from > date_to

    "Passagem criada com sucesso"
  end
end
