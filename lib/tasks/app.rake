
namespace :app do

  desc "Populate the databse with development data"
  task :populate => :environment do
    [
      {:first_name => "Darth",     :last_name => "Vader"},
      {:first_name => "Commander", :last_name => "Prajii"},
      {:first_name => "Biggs",     :last_name => "Darklighter"},
      {:first_name => "Han",       :last_name => "Solo"}
      ].each do |attributes|
        Person.find_or_create_by_first_name(attributes)
      end
  end

end