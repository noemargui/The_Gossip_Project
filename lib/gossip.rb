require 'controller'

class Gossip
	attr_accessor :params

	def initialize(params)
	  @params = params
	end

	def save
		CSV.open("./db/gossip.csv", "a") do |csv|
			params.each do |author, content|
				csv << [author, content]
			end
    end
  end

  def self.all
  	all_gossips = [] # création d'une array vide qui s'appelle all_gossips
  	CSV.open("./db/gossip.csv", "r") do |line| # chaque ligne de ton CSV.each do |ligne|
    	temp_gossip = Gossip.new(line) # gossip_provisoire = Gossip.new(paramètres de la ligne) - permet de créer un objet gossip
    	all_gossips << temp_gossip # all_gossips << gossip_provisoire - permet de rajouter cet objet au array
  	end # end
 		return all_gossips # return all_gossips - on renvoie le résultat
 	end

end