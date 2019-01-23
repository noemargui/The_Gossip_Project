require 'controller'
require 'colorize'

class Router

  def initialize
    @controller =  Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts ""
    puts "===============================================".colorize(:blue)
    puts "************* THE GOSSIP PROJECT **************".colorize(:red)
    puts "===============================================".colorize(:blue)
    while true

      #on affiche le menu
      puts ""
      puts "Tu veux faire quoi poulet?".colorize(:red)
      puts "1 - Je veux créer un gossip".colorize(:blue)
      puts "2 - Je veux afficher tous les po-potins".colorize(:blue)
      puts "3 - Je veux quitter l'app immédiatement".colorize(:blue)
      puts ""
      print " Mon choix > ".colorize(:yellow)
      params = gets.chomp.to_i #on attend le choix de l'utilisateur

      case params #en fonction du choix
      when 1
        puts " Tu as fait le bon choix. Créons un gossip !"
        puts ""
        @controller.create_gossip
      when 2
        puts " Petit curieux: c'est parti..."
        puts ""
        @controller.index_gossips
      when 3
        puts " Déja? Ca marche. À bientôt !"
        puts ""
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir.
      else
        puts "1 ou 2. T'écoutes les consignes parfois ?" #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end