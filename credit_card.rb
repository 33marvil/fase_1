# =begin 
# Clases
# Crear una clase CreditCard que tenga como datos la información que aparece en la tabla de ejemplo.
# Posteriormente crea un arreglo con cinco objetos de tarjetas de crédito e imprime la información 
# de cada tarjeta en una tabla. Utiliza las pruebas y la tabla que se presenta de ejemplo.
# =end

#Clase CreditCard
class CreditCard
  attr_reader :name, :number, :expiration, :cvc # solo lectura
  attr_accessor :status # lectura y reescribir
  
  def initialize(name, number, expiration, cvc, status)
    @name = name
    @number = number
    @expiration = expiration
    @cvc = cvc
    @status = status
  end

end

#Cinco instancias de CreditCard
card_amx = CreditCard.new("Amex", 2345673444, 12/15, 2345, [234, 567, 456, 567, 344])
card_sbn = CreditCard.new("ScotiaBank", 2345673744, 12/16, 2845, [234, 345, 456, 567, 344])
card_bmr = CreditCard.new("Bancomer", 2345673444, 12/15, 2645, [234, 345, 456, 567, 344])
card_sf = CreditCard.new("Serfin", 2345473454, 12/20, 1345, [234, 345, 456, 567, 344])
card_bcl = CreditCard.new("BanCoppel", 2345373464, 12/18, 2445, [567, 345, 456, 567, 344])

#Array con cinco objetos de tarjetas de crédito
cards = [card_amx, card_sbn, card_bmr, card_sf, card_bcl]

cards.each do |card|
   puts "#{card.name} responds to:"
   puts "\tName: #{card.respond_to?(:name) == true}"
   puts "\tNumber: #{card.respond_to?(:number) == true}"
   puts "\tExpiration: #{card.respond_to?(:expiration) == true}"
   puts "\tcvc: #{card.respond_to?(:cvc) == true}"
   puts "\tGet status: #{card.respond_to?(:status) == true}"
   puts "\tSet status: #{card.respond_to?(:status=) == true}"
   puts "\n\n"
end

#método para mostrar datos de tarjetas

puts " name  |  number  |  expiration  |  cvc  |  status  " 
  puts "---------------------------------------------------------------------------"
cards.each do |card|
  puts "  #{card.name}  |  #{card.number}  |  #{card.expiration}  |  #{card.cvc}  |  #{card.status}  "
  puts "---------------------------------------------------------------------------"
end

# |     name     |     number     |    expiration  |      cvc      |           status          |
# ----------------------------------------------------------------------------------------------
# |   Amex       |    2345673444  |      12/15     |      2345     | [234, 567, 456, 567, 344] |  
# |   ScotiaBank |    2345673744  |      12/16     |      2845     | [234, 345, 456, 567, 344] |  
# |   Bancomer   |    2345673444  |      12/15     |      2645     | [234, 345, 456, 567, 344] |  
# |   Serfin     |    2345473454  |      12/20     |      1345     | [234, 345, 456, 567, 344] |  
# |   BanCoppel  |    2345373464  |      12/18     |      2445     | [567, 345, 456, 567, 344] |   
