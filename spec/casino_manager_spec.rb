require 'spec_helper'
require_relative '../casino_manager.rb'

describe Manager do
  before(:each) do
    @manager = Manager.new
  end

  it 'prints main menu' do
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
    expected = cards
    puts expected
    puts @manager.main_menu
    expect{@manager.main_menu}.to output(expected).to_stdout
  end

  it 'displays money' do
    @answer.add_answer('Test')
    expected = @answer.default_answers
    @answer.reset_answers
    actual = @answer.my_answers
    expect(actual).to eq(expected)
  end

  it 'does nothing' do
    expected = puts @answer.my_answers
    expect {@answer.print_answers}.to output(expected).to_stdout
  end

end
