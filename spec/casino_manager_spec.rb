require 'spec_helper'
require_relative '../casino_manager.rb'

describe Manager do
  before(:each) do
    @manager = Manager.new
  end

  it 'prints main menu' do
    expected = puts "+-+-+-+-+ Welcome to the Casino +-+-+-+-+ \n 1) Check balance \n 2) List games \n 3) Exit \n+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+"
    puts expected
    puts @manager.print_main_menu
    expect{@manager.main_menu}.to output(expected).to_stdout
  end

  it 'gets money' do
    expected = @manager.money
    actual = @manager.money
    expect(actual).to eq(expected)
  end

  it 'chooses an option from the menu' do
    expected = @manager.choose_option(1)
    actual = @manager.choose_option(1)
    expect (expected).to eq(actual)
  end

end
