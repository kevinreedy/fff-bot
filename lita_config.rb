Lita.configure do |config|
  # The name your robot will use.
  config.robot.name = 'fff-bot'

  # The locale code for the language to use.
  # config.robot.locale = :en

  config.robot.log_level = :info

  # config.robot.admins = ["1", "2"]

  config.robot.adapter = :slack
  config.adapters.slack.token = ENV['SLACK_TOKEN']

  config.redis[:host] = ENV['REDIS_HOST'] || '127.0.0.1'
  config.redis[:port] = ENV['REDIS_PORT'] || 6379

  config.handlers.espn_fantasy_football.league_id = ENV['ESPN_LEAGUE_ID']
  config.handlers.espn_fantasy_football.season_id = ENV['ESPN_SEASON_ID'] || '2017'
  config.handlers.espn_fantasy_football.activity_room = ENV['ACTIVITY_ROOM'] || 'finalfantasyfootball'
  config.handlers.espn_fantasy_football.activity_interval = ENV['ACTIVITY_INTERVAL'] || 900
end
