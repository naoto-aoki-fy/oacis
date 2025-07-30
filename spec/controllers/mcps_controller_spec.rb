require 'spec_helper'

describe McpsController do
  def valid_attributes
    { name: 'mcp1', value: 10 }
  end

  describe 'GET index' do
    it 'assigns all mcps as @mcps' do
      mcp = Mcp.create!(valid_attributes)
      get :index, params: {}
      expect(assigns(:mcps)).to eq([mcp])
    end
  end

  describe 'GET show' do
    it 'assigns the requested mcp as @mcp' do
      mcp = Mcp.create!(valid_attributes)
      get :show, params: { id: mcp.to_param }
      expect(assigns(:mcp)).to eq(mcp)
    end
  end

  describe 'POST create' do
    it 'creates a new Mcp' do
      expect {
        post :create, params: { mcp: valid_attributes }
      }.to change(Mcp, :count).by(1)
    end
  end

  describe 'PATCH update' do
    it 'updates the requested mcp' do
      mcp = Mcp.create!(valid_attributes)
      patch :update, params: { id: mcp.to_param, mcp: { value: 20 } }
      mcp.reload
      expect(mcp.value).to eq 20
    end
  end
end
