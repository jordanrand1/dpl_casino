#require_relative 'go_fish.rb'
#requite_relative 'strip_club.rb'

class Manager

  attr_accessor :money

  def initialize
    @money = 1000
    #@go_fish = GoFish.new
    #@strip_club = StripClub.new
  end

  def main_menu
    cards =
                "__                                               
        _..-''--'----_.                                        
      ,''.-''| .---/ _`-._                                     
    ,' \ \  ;| | ,/ / `-._`-.                                  
  ,' ,',\ \( | |// /,-._  / /                                  
  ;.`. `,\ \`| |/ / |   )/ /                                   
 / /`_`.\_\ \| /_.-.'-''/ /                                    
/ /_|_:.`. \ |;'`..')  / /                                     
`-._`-._`.`.;`.\  ,'  / /                                      
    `-._`.`/    ,'-._/ /                                       
      : `-/     \`-.._/                                        
      |  :      ;._ (                                          
      :  |      \  ` \                                         
       \         \   |                                         
        :        :   ;                                         
        |           /                                          
        ;         ,'                                           
       /         /                                             
      /         /                                              
               /"
    puts cards
  end
end