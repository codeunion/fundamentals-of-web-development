attr_reader :attr_namesequire 'data_mapper'

DataMapper.setup(:default, 'sqlite:bets.db')

SPREAD = 7

class Game
  include DataMapper::Resource
  property :id,          Serial
  property :home_team, String
  property :away_team, String
  property :actual_final_score_home, Integer
  property :actual_final_score_away, Integer

  has n, :bets

  def winner
    adjusted_home_score = actual_final_score_home
    adjusted_away_score = actual_final_score_away
    if home_score > away_score
      :home
    elsif away_score > home_score
      :away
    else
      :tie
    end
  end
end

class Bet
  include DataMapper::Resource
  belongs_to :game
  property :id,          Serial
  # property :player_1, String # 'bob' integer user_id
  # property :player_2, String # integer user_id
  has n, :players

  def winner
    if self.game.winner == :home
      self.players.select {|player| player.home == true }.first
    elsif self.game.winner == :away
      self.players.select {|player| player.home == false }.first
    elsif self.game.winner == :tie
      'there is no winner'
    end
  end
end

class Player
  include DataMapper::Resource
  belongs_to :bet
  property :id,          Serial
  property :name, String # in reality, you want to work with user_id
  property :home, Boolean
end

DataMapper.finalize()
DataMapper.auto_upgrade!()

@game = Game.create(home_team: 'bruins', away_team: 'hawks', actual_final_score_away: 10, actual_final_score_home: 20, favored: 'home')
@game.bets.create()
Bet.last.players.create(name: 'john', home: false)
Bet.last.players.create(name: 'alex', home: true)
