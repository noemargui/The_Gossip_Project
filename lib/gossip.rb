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
  	@@all_gossips = [] # création d'une array vide qui s'appelle all_gossips
  	CSV.open("./db/gossip.csv", "r").each do |line| # chaque ligne de ton CSV.each do |ligne|
  		@@all_gossips << line
  	end # end
 		return @@all_gossips # return all_gossips - on renvoie le résultat
 	end

end