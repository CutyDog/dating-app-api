# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  name            :string           not null
#  password_digest :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    context 'when all attributes are present' do
      let(:user) { build(:user) }

      it 'is valid' do
        expect(user).to be_valid
      end
    end
  end
end
