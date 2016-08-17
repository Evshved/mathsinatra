require_relative '../spec_helper'

RSpec.describe LinearEquation  do
  describe '#roots' do
    subject { described_class.new(k, b) }

    context 'without roots' do
      let(:k) { 0 }
      let(:b) { 5 }

      specify { expect(subject.roots).to be_empty }
    end

    context 'with root = 1' do
      let(:k) { 1 }
      let(:b) { 1 }

      specify { expect(subject.roots).to eq(-1) }
    end
  end
end
