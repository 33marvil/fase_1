=begin 
Race cars
En una pista de carrera se realizan ciertas pruebas de velocidad a diferentes race cars.
Se necesita medir para cada carro la velocidad promedio de acuerdo a cinco laptimes registrados.
El lapdistance de la pista es de 100 metros.
>>>>Esta distancia es importante que la consideres constante en el programa.<<<<

Es necesario crear una clase RaceCar que contemple el nombre del carro y los tiempos de cada lap que ha registrado.
Hay que considerar un método que retorne la velocidad promedio de cada carro, 
otro método que muestre el nivel de cada carro dependiendo de su velocidad 
(Principiante, Normal, Medio, Avanzado). 
Posteriormente, crear una clase Team que permita formar equipos de carros.
Por último, crear un método que permita buscar si existe un determinado carro en un equipo. 
Todas las pruebas deben pasar.

Extra - Crea un metodo en team que regrese el promedio de velocidad del equipo.

Extra - Genera una tabla que muestre el coche y su nivel.
=end
#RaceCar class

class RaceCar
  attr_reader :name

  def initialize(name)
    @name = name
  end

  #método para obtener velocidad promedio
  def average_speed
    laptimes = 0
    5.times do |lap|
      time = rand(1..100)
      laptimes += (100 / time)
    end
    laptimes.to_f / 5    
  end
      
  #método que muestra nivel de cada race car
  def level
    case average_speed
      when (0..2)
        "Principiante"
      when (3..5)
        "Medio"
      when (6..8)
        "Normal" 
      else (9..10)
      "Avanzado"        
    end    
  end
end


#Team class
class Team < RaceCar
  attr_accessor :team

  def initialize(team)
    @team = team
  end

  def average_speed_of_team
    add_team = 0
     team.each do |car|
       add_team += car.average_speed
     end
     add_team / team.length.to_f
  end
end

def search(name, team)
  racer = " "  
  team.team.each do |car|
    if car.name == name
      racer = "#{car.name} is a racer"
    end
  end
  racer
end

def table_position(team1)
  puts "|          Name          |       Nivel        |"
  puts "______________________________________________ "
  team1.each do |team|    
    puts "|     #{team.name}     |     #{team.level}     |"
    puts "_____________________________________________"
  end
end

#instancias de RaceCar
car1 = RaceCar.new("Force")
car2 = RaceCar.new("Power")
car3 = RaceCar.new("Passwater")
car4 = RaceCar.new("Banjo")
car5 = RaceCar.new("Duck")
car6 = RaceCar.new("Ghost")

#tests

p "car1: #{car1.average_speed} m/s"
#ej. car1: 9.5 m/s
p "car2: #{car2.average_speed} m/s"
#ej. car2: 12.01 m/s
p "car3: #{car3.average_speed} m/s"
#ej. car3: 10.65 m/s
p "car4: #{car4.average_speed} m/s"
#ej. car4: 11.0 m/s
p "car5: #{car5.average_speed} m/s"
#ej. car5: 10.15 m/s
p "car6: #{car6.average_speed} m/s" 
#ej. car6: 15.51 m/s

#create a team of cars 
team1 = [car1, car2, car3, car4, car5, car6]

team_one = Team.new(team1)  

#test para buscar race car en equipo team_one
p search("Power", team_one) == "Power is a racer"

#calculate average speed of team
p team_one.average_speed_of_team
#ej. 10.66 

#método para mostrar nombre y nivel del race car
p table_position(team1)

#Ejemplo de tabla que muestra nombre y nivel del race car

# |    Name        |    Nivel        |
# ------------------------------------
# |   Force        |   Principiante  |
# |   Power        |   Medio         |
# |   Passwater    |   Normal        |
# |   Banjo        |   Normal        |
# |   Duck         |   Normal        |