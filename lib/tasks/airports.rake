require 'csv'

namespace :db do
  task airports: :environment do
    CSV.foreach("lib/assets/airport-codes.csv", headers: true, :encoding => 'windows-1251:utf-8') do |row|
      row_hash = row.to_hash
      airport = Airport.find_or_initialize_by(city: row_hash["City name"], code: row_hash["Airport Code"])
      airport.save
    end
  end
end