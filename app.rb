require 'bundler' # permet de remplacer tous les require 'gem'
Bundler.require

$:.unshift File.expand_path("./../lib/", __FILE__) # permet de se placer directement dans le lib/app, sans avoir à rentrer le chemin précis
require 'router'

Router.new.perform