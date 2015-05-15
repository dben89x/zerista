class TestEventsController < ApplicationController
  def index
    @events = TestEvent.all
    @event_data = TestEvent.paginate({page: params[:page], per_page: 5})

    @unique_tracks = []
    @events.each {|e| @unique_tracks << e[:track] }
    @unique_tracks.uniq! {|a| a}
    @unique_tracks.sort!

    @hash = {}
    count = 0

    @unique_tracks.each do |u|
      @hash[count] = u
      count += 1
    end
  end
end
