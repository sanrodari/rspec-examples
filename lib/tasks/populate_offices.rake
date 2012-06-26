namespace :db do
  desc "Fill database with sample data"
  task populate_offices: :environment do
    10.times do |n|
      Office.create! name: Faker::Address.street_name
    end
  end
end