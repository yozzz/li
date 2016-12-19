require 'rails_helper'

RSpec.describe Li::Generator do
  describe 'Short key generation' do
    it 'generates short key' do
      short_key = Li::Generator.new(1).generate
      expect(short_key).to be_a(String)
      expect(short_key.length).to eq(5)
    end
  end
end
