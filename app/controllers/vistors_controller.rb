class VistorsController < ApplicationController
  respond_to :json

  def index
  	respond_to do |format|
  		format.json {render json: Vistor.all}
  		format.html
    end  
  end

  def create
  	respond_with Vistor.create(vistor_params)
  end

  def destroy
  	respond_with Vistor.destroy(params[:id])
  end

  private

  def vistor_params
  	params.require(:vistor).permit(:first_name, :last_name, :reason)
  end
end
