require 'pry'
require 'rest-client'
require 'json'
require_relative "./rick.rb"
class API 


def self.get_ricks
    resp = RestClient.get("https://rickandmortyapi.com/api/character/?page=1&name=rick")
    response_hash = JSON.parse(resp.body, symbolize_names:true)
    rickandrick_array = response_hash[:results]

    rickandrick_array.each {|rick|
    Rick.new(rick[:name], rick[:status], rick[:species], rick[:origin][:name], rick[:location][:name], rick[:image], rick[:url])}
end 





end 
