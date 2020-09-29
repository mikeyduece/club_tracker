RSpec.shared_examples 'shared payload response' do
  it 'returns clubs' do
    expect(json_response).to have_key(:data)
    expect(json_response).to have_key(:included)
    expect(json_response[:data]).not_to be_nil
    expect(json_response[:data]).to be_a(Array)
    expect(json_response[:data].first.keys).to include(:id, :type, :attributes, :relationships)
  end
end