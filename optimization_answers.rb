# Q1 - 584 queries
players = Player.all
players.each do |player|
    puts player.team.name, player.team.mascot, player.team.stadium
end
# Q2 - 2 queries
players = Player.includes(:team)
players.each do |player|
    puts player.team.name, player.team.mascot, player.team.stadium
end
# Q3
Player.includes(:team).where("teams.name = 'Chicago Bulls'").references(:team)
# Q4
Player.joins(:team).select('players.*', 'teams.name as team_name').where("teams.stadium = 'Staples Center'")
# Q5
Team.includes(:players).where("players.name LIKE 'Z%'").references(:players)
Team.joins(:players).where("players.name LIKE 'Z%'")
