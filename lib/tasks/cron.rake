desc "This task is called by the Heroku cron add-on "
task :cron => :environment do
  if Time.now.monday? # run on mondays
    puts "Cycling chores..."
    User.all.first.cycle
    puts "done." 
    puts "Now sending out text alerts..."
    User.all.first.alert  
    puts "done."
  end

  #if Time.now.hour == 0 # run at midnight
  #  User.send_reminders
  #end
end