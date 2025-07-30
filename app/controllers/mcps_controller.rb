class McpsController < ApplicationController
  def index
    @mcps = Mcp.all
    respond_to do |format|
      format.html
      format.json { render :index }
    end
  end

  def show
    @mcp = Mcp.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :show }
    end
  end

  def create
    @mcp = Mcp.new(mcp_params)
    respond_to do |format|
      if @mcp.save
        format.html { redirect_to @mcp, notice: 'Mcp was successfully created.' }
        format.json { render :show, status: :created, location: @mcp }
      else
        format.html { render :new }
        format.json { render json: @mcp.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @mcp = Mcp.find(params[:id])
    respond_to do |format|
      if @mcp.update(mcp_params)
        format.html { redirect_to @mcp, notice: 'Mcp was successfully updated.' }
        format.json { render :show, status: :ok }
      else
        format.html { render :edit }
        format.json { render json: @mcp.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def mcp_params
    params.require(:mcp).permit(:name, :value, :description)
  end
end
