require 'csv'

csv_text = File.read('lib/assets/test_events.csv')
csv = CSV.parse(csv_text, headers: true)
csv.each do |row|
  TestEvent.create!(row.to_hash)
end
