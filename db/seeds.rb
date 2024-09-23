# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
race_data = HTTParty.get("https://api.openf1.org/v1/meetings?year=2024")
race_data.each do |race|
  Race.create!(
    circuit_key: race["circuit_key"],
    circuit_short_name: race["circuit_short_name"],
    meeting_key: race["meeting_key"],
    meeting_name: race["meeting_name"],
    meeting_official_name: race["meeting_official_name"],
    country_key: race["country_key"],
    country_name: race["country_name"],
    location: race["location"],
    start_date: race["date_start"],
    year: race["year"]
  )
end
