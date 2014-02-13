desc "This task is called by the Heroku scheduler add-on"
task :update_balance => :environment do
  
  if Time.now.day == 1 
    @balance += 300
  end
  
end