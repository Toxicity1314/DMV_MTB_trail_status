# Use this file to easily define all of your cron jobs.

# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

set :environment, "production"
set :output, "log/cron.log"

every 1.day, at: ['4:00 am', '2:00 pm'] do
    runner "FetchRainDataJob.perform_now"
end
# Learn more: http://github.com/javan/whenever
