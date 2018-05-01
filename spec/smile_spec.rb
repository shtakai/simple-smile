require 'spec_helper'
require_relative '../lib/smile'

RSpec.describe Smile do
  let(:smile) { described_class.new }
  describe '#ensmile' do
    it 'returns "SMILE"' do
      expect(smile.smile).to be_nil
      expect(smile.ensmile).to eq 'SMILE'
      expect(smile.smile).to eq 'SMILE'
    end

    it 'returns "CRY"' do
      expect(smile.smile).to be_nil
      expect(smile.ensmile(cry: true)).to eq 'CRY'
      expect(smile.smile).to eq 'CRY'
    end
  end
end
