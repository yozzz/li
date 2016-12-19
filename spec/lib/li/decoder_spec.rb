require 'rails_helper'

RSpec.describe Li::Decoder do
  describe 'Decode short key' do
    it 'returns id number' do
      short_key = Li::Generator.new(123).generate
      id_num = Li::Decoder.new(short_key).decode
      expect(id_num).to eq(123)
    end
  end
end
