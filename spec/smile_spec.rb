require 'spec_helper'
require_relative '../lib/smile'

RSpec.describe Smile do
  context 'init with nil' do
    let(:nilsmile) { described_class.new smile: nil }
    describe '#ensmile' do
      it 'returns "SMILE"' do
        expect(nilsmile.smile).to be_nil
        expect(nilsmile.ensmile).to eq 'SMILE'
        expect(nilsmile.smile).to eq 'SMILE'
      end

      it 'returns "CRY"' do
        expect(nilsmile.smile).to be_nil
        expect(nilsmile.ensmile(cry: true)).to eq 'CRY'
        expect(nilsmile.smile).to eq 'CRY'
      end
    end
  end

  context 'init with false' do
    let(:falsesmile) { described_class.new smile: false }
    describe '#ensmile' do
      it 'returns "SMILE"' do
        expect(falsesmile.smile).to be_falsy
        expect(falsesmile.ensmile).to eq 'SMILE'
        expect(falsesmile.smile).to eq 'SMILE'
      end

      it 'returns "CRY"' do
        expect(falsesmile.smile).to be_falsy
        expect(falsesmile.ensmile(cry: true)).to eq 'CRY'
        expect(falsesmile.smile).to eq 'CRY'
      end
    end
  end

  context 'init with Young Takajin' do
    let(:young_takajin_smile) {
      described_class.new smile: 'Young Takajin'
    }
    describe '#ensmile' do
      it 'returns "SMILE"' do
        expect(young_takajin_smile.smile).not_to be_nil
        expect(young_takajin_smile.ensmile).to eq 'Young Takajin'
        expect(young_takajin_smile.smile).to eq 'Young Takajin'
      end

      it 'returns "CRY"' do
        expect(young_takajin_smile.smile).to eq 'Young Takajin'
        expect(young_takajin_smile.ensmile(cry: true)).to eq 'Young Takajin'
        expect(young_takajin_smile.smile).to eq 'Young Takajin'
      end
    end
  end
end
