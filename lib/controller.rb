require 'view'
require 'gossip'

class Controller

	def initialize
		@view = View.new
	end

	def create_gossip
		params = @view.create_gossip
		gossip = Gossip.new(params)
		gossip.save
	end

	def index_gossips
		all_gossips = @gossip.self.all
		gossip = View.new(all_gossips)
		gossip.save
	end

end