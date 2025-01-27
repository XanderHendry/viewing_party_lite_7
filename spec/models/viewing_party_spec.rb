require 'rails_helper'

RSpec.describe ViewingParty, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:movie_id) }
    it { should validate_presence_of(:duration) }
    it { should validate_presence_of(:date) }
    it { should validate_presence_of(:start_time) }
  end
  describe 'relationships' do
    it { should belong_to(:user) }
    it { should have_many(:party_guests) }
    it { should have_many(:users).through(:party_guests) }
  end
end
