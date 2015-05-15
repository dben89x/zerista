class CreateTestEvents < ActiveRecord::Migration
  def change
    create_table :test_events do |t|
      t.datetime :start
      t.datetime :finish
      t.string :name
      t.string :track
    end
  end
end
