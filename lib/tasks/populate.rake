namespace :wg do

  desc "Populate database"
  task :populate => :environment do
    Populate.me
  end
end
