require 'controller'

class View

	def create_gossip
		puts "Pour commencer, j'aimerais savoir quel est ton nom?"
		puts "Tu peux utiliser un pseudo si tu veux garder l'anonymat ;)"
		print ">"
		author_live = gets.chomp
		puts "Je te remercie. Maintenant, balance le GOSSIP !"
		print ">"
		content_live = gets.chomp
		puts "Un grand merci pour ta contribution à la communauté."
		return params = { author_live => content_live }
	end

	def index_gossips(gossips)
		gossips.each do |gossip|
			puts gossip
		end
	end

end