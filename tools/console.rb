require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



gym_1 = Location.new("Plant")
gym_2 = Location.new("LA")
gym_3 = Location.new("CD")

tom_t = Trainer.new("Tom",gym_1,gym_2,gym_3)
tim_t = Trainer.new("Tim",gym_1)

ben_c = Client.new("Ben", tom_t, gym_1)
tom_c = Client.new("tom", tom_t, gym_2)
kry_c = Client.new("Kry", tom_t, gym_3)
king_c = Client.new("King", tim_t, gym_1)
lin_c = Client.new("Lin", tim_t, gym_1)
ken_c = Client.new("Ken", tom_t, gym_2)

Pry.start
