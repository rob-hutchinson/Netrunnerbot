class Card < ActiveRecord::Base
  
  def self.fill
    cards = Netrunnerbot.search
    cards.each do |x|
      Card.find_or_create_by(code: x["code"]) do |y|
        y.title = x["title"]
        y.code = x["code"]
        y.picture = x["imagesrc"]
      end
    end  
  end

end