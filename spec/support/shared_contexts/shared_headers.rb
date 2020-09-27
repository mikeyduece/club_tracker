RSpec.shared_context 'shared headers' do
  let(:headers) { { Accept:  'application/vnd.club-tracker.json; version=1' } }
  let(:user) { create(:user) }

end
