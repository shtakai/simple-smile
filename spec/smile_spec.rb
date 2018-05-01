require 'spec_helper'
require_relative '../lib/smile'

RSpec.describe Smile do
  let(:smile) { described_class.new }
  describe '#ensmile' do
    it 'returns "SMILE"' do
      expect(smile.ensmile).to eq 'SMILE'
      expect(smile.smile).to eq 'SMILE'
    end
  end
end
