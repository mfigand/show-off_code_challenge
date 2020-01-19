# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  let(:first_name) { 'John' }
  let(:last_name) { 'Doe' }
  let(:password) { 'password' }
  let(:email) { 'email' }
  let(:user) do
    build(:user, first_name: first_name,
                 last_name: last_name,
                 password: password,
                 email: email)
  end

  it 'With valid attributes' do
    expect(user).to be_valid
  end

  describe 'Invalid' do
    context 'without first name' do
      let(:first_name) { nil }

      it { expect(user).to_not be_valid }
    end

    context 'without last name' do
      let(:last_name) { nil }

      it { expect(user).to_not be_valid }
    end

    context 'without password' do
      let(:password) { nil }

      it { expect(user).to_not be_valid }
    end

    context 'without email' do
      let(:email) { nil }

      it { expect(user).to_not be_valid }
    end
  end
end
