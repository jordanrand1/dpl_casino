# def animation
#   i = 1
#   while i < 18
#     print "\033[2J"
#     File.foreach("chicken_stripper/#{i}.rb") { |f| puts f }
#     sleep(0.4)
#     i += 1
#   end
# end
class StripClub
  def animation
    3.times do
    i = 1
    while i < 19
      print "\033[2J"
        File.foreach("chicken_stripper/#{i}.rb") { |f| puts f }
        sleep(0.3)
        i += 1
      end
    end
  end
end
# 3.times do
#   i = 1
#   while i < 19
#     print\r "\033[2J"
#       File.foreach("chicken_stripper/#{i}.rb") do |f|
#         puts f 
#         print "\r"
#       end
#       sleep(0.3)
#       i += 1
#     end
#   end
