require 'spec_helper'

describe Mcp do
  describe 'validations' do
    it 'requires name' do
      expect(Mcp.new(value: 1)).not_to be_valid
    end

    it 'requires unique name' do
      FactoryBot.create(:mcp, name: 'dup')
      expect(Mcp.new(name: 'dup', value: 2)).not_to be_valid
    end

    it 'requires value' do
      expect(Mcp.new(name: 'abc')).not_to be_valid
    end
  end
end
