require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("https://www.ign.com/lists/top-100-games/99"))


def game_names(page)
game_names_array = []
page.xpath('//div[@class="item-heading"]/a').each do |name|
game_names_array << name.text
end
 print "#{game_names_array}"
end



def game_images(page)
game_images_array = []
page.xpath("//div[@class='item-image-container']/img/@src").each do |image|
game_images_array << image.text
  end
  print game_images_array
end

game_images(page)

