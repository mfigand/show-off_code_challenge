# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Widget, type: :model do
  let(:name) { 'Widget_1' }
  let(:description) { 'A visible widget' }
  let(:kind) { 'visible' }
  let(:widget) do
    build(:widget, name: name,
                   description: description,
                   kind: kind)
  end

  it 'With valid attributes' do
    expect(widget).to be_valid
  end

  describe 'Invalid' do
    context 'without name' do
      let(:name) { nil }

      it { expect(widget).to_not be_valid }
    end

    context 'without description' do
      let(:description) { nil }

      it { expect(widget).to_not be_valid }
    end

    context 'without kind' do
      let(:kind) { nil }

      it { expect(widget).to_not be_valid }
    end
  end
end
