require 'rails_helper'

RSpec.describe 'User', type: :request do
  let(:user) { create(:user) }
  subject { get api_user_path(user_id) }

  context 'when user exists' do
    let(:user_id) { user.id }

    it 'returns the user' do
      subject
      expect(body['user']['id']).to eq(user.id)
    end
  end

  context 'when user does not exist' do
    let(:user_id) { -1 }

    it 'returns not found' do
      subject
      expect(response).to have_http_status(:not_found)
    end
  end
end
