require 'rails_helper'

RSpec.describe Review, type: :model do
  subject { described_class.new(rating: 5, comment: 'comment') }

  describe '#initialize' do
    it 'has rating' do
      expect(subject.rating).to eq 5
    end

    it 'has comment' do
      expect(subject.comment).to eq 'comment'
    end
  end
end
