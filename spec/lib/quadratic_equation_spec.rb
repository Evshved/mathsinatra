# #Test quadratic D > 0
# equation.quadratic(1,1,0) => [0.0, -1.0]
# # D = 0
# equation.quadratic(1,2,1) => [-1]
# # D < 0
# equation.quadratic(100,1,2) => []

require_relative '../spec_helper'

RSpec.describe QuadraticEquation do
  describe '#roots' do
    subject { described_class.new(a, b, c) }

    context 'discriminant > 0' do
      let(:a) { 1 }
      let(:b) { 1 }
      let(:c) { 0 }
      specify { expect(subject.roots).to eq([0.0, -1.0]) }
    end

    context 'discriminant = 0' do
      let(:a) { 1 }
      let(:b) { 2 }
      let(:c) { 1 }

      specify { expect(subject.roots).to eq([-1]) }
    end

    context 'discriminant < 0' do
      let(:a) { 100 }
      let(:b) { 1 }
      let(:c) { 2 }
      specify { expect(subject.roots).to be_empty }
    end
  end
end
