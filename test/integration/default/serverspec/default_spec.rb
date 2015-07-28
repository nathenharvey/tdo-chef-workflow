require 'spec_helper'

describe 'web::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  it 'returns the home page' do
    expect(command('curl http://localhost').exit_status).to eq 0
  end

  it 'is listening on port 80' do
    expect(port 80).to be_listening
  end
end
