# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

# every :day, at: '0am' do
#   # specify the task name as a string
#   runner 'Turnover.insert_to_db'
# end

# env :PATH, '/usr/local/bundle/gems'
env :PATH, ENV['PATH']
# setting log path
set :output, 'log/cron.log'
# job_type :runner, "cd :path && script/rails runner -e :environment ':task' :output"

every :day, at: '0am' do
  runner 'Turnover.insert_to_db'
end

# every 1.minutes do
#   runner 'Turnover.insert_to_db', environment: 'development'
# end
