User.destroy_all

Game.destroy_all


Bob = User.create(:name => "Bob")
Bob.games.build(:score => 5)
Bob.save

Pickle = User.create(:name => "Pickle")
Pickle.games.build(:score => 3)
Pickle.save

Kev = User.create(:name => "Kev")
Kev.games.build(:score => 1)
Kev.save
