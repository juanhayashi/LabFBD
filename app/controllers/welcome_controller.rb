class WelcomeController < ApplicationController

  def index
  	require 'twitter'
	client = Twitter::REST::Client.new do |config|
  		config.consumer_key        = "PJR31VWllWo0Sp8CzYbqfpgAW"
  		config.consumer_secret     = "iMeATPsJw44kRD0oAl6Utoqyb8Cy68qNEp2P7znpzvBetL1HaX"
  		config.access_token        = "66786004-lxh7Ij6LhtzFCnEcUeI0VaGfJcvLYqaEsVasdRI91"
  		config.access_token_secret = "uyqCbzikB8JUm2PYyyhpEKgolce2qPeopDKPyxD4NYUlW"	
	end
	#topics = ["Aborto","legal"]
	#@busqueda = client.search('a', :geocode =>"46.28116,2.83447,30km").take(10).collect
	#@busqueda = client.search("#AbortoCero", :geocode => "23.0595162,-101.337890625,500km").take(10).collect
	#@busqueda = client.search("#apply194 -rt", :lang=>'it').take(10).collect
	#@busqueda.each do |tweet|
	#	Texto.create("texto" => tweet.text, "idioma" => tweet.lang)
	#	Pai.create("nombre_pais" => 'Italia')
	#	Tusuario.create("username" => tweet.user.name)
		
	#end
  	
  
  
  	
	end
end
