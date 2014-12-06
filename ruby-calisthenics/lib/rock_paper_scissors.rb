class RockPaperScissors
  STRATEGIES = ['R','P','S']
  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    p1 = player1[1]
    p2 = player2[1]
    unless STRATEGIES.include?(p1) && STRATEGIES.include?(p2)
      raise NoSuchStrategyError, "Strategy must be one of R,P,S"     
    end
    case p1
    when p2
      return player1
    when 'R'
      return(p2 == 'S' ? player1 : player2)
    when 'S'
      return(p2 == 'P' ? player1 : player2)
    when 'P'
      return(p2 =='R' ? player1: player2)
    end
  end

  def self.tournament_winner(tournament)
    return winner(tournament[0],tournament[1]) if tournament.flatten.length == 4
    winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))
  end
end
