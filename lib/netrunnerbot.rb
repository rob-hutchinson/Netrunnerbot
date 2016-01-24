require 'httparty'

class Netrunnerbot
  def self.search 
    cards = HTTParty.get("http://netrunnerdb.com/api/cards")
  end
end