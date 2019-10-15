
class Player # déclaration de la class player
    attr_accessor :name, :life_points # permet de déclarer les variables de class

    def initialize(name,life_points) # la méthode pour initialiser notre class player
        @name = name
        @life_points = life_points
    end

     def show_state # méthode pour montrer l'etat du joeur
         return "#{name} a #{life_points} points de vie"
     end

    def gets_damage # méthode qui défini les préjudices
         if @life_points <= 0 # si les points du joueur sont inférieurs ou égal à zero GAME OVER
             puts "Le joueur #{name} a été tué"
         end
     end

    def attacks(player_attack) # méthode qui défini qui attaque qui ?
      
        result = compute_damage
       

         while @life_points > 0 && player_attack.life_points > 0
            puts "#{@name} attaque #{player_attack.name}"  
            player_attack.life_points -= result
        
            puts "Il lui inflige #{result} points de dommages"
            break
         end 
        gets_damage
     end
    
     def compute_damage # méthode qui défini les coups réçu, ici les coups sont aléatoires entre 1 à 6
        return rand(1..6)
      end

end

class HumanPlayer < Player # la class HumanPlayer qui va hériter de la class Player
    attr_accessor :weapon_level

    def initialize(name)
        @life_points = 100
        @weapon_level = 1
    end


    def show_state
        return "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}".
   
     end

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        test_weapon = rand(1..6) 
        puts  "Tu as trouvé une arme de niveau #{test_weapon}"
            if test > @weapon_level
            puts "Youhou Elle est meilleurs que ton arme actuelle: tu las prends"
             elsif new_weapon == @weapon_level
            "Laisse tombé, c'est pareil"
             else  test_weapon <= @weapon_level
            puts "M@*#$ .. elle n'est pas mieux que ton arme actuelle..."
         end
        end
    end

    def search_health_pack
        health_pack = rand(1..6)
        if health_pack == 1
            puts "Tu n'as rien trouvé"
        elsif health_pack == 6
            @life_points += 80 
                if @life_points > 100
                    @life_points = 100    
                end
            puts "Waow, tu as trouvé un pack de +80 points de vie ! Tu as maintenant #{life_points} vies"
            
        else 
            @life_points += 50 
                if @life_points > 100
                    @life_points = 100    
                end
            puts "Bravo, tu as trouvé un pack de +50 points de vie ! Tu as maintenant #{life_points} vies"
        end
    end
 

end