require "rails_helper"

RSpec.describe Movie, :type => :model do
  subject { 
    described_class.new(title: "Anything", rating: "Anything", text: "Anything",
                        release_date: Date.new, created_at: Date.new, updated_at: Date.new,
                        director: "Anything") 
  }
  
  describe "Class Functions" do
    it "all_ratings should return five ratings" do
      expect(Movie.all_ratings).to eq(%w(G PG PG-13 NC-17 R)) 
    end
  end

end