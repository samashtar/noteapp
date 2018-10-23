class TypesController < ApplicationController
    def index
      render json: Type.all
    end

    def show
      @type = Type.find(params[:id])
      render json: @type
    end

    def create
      @type = Type.create(type_params)
      render json: @type
    end

    def update
      @type = Type.find(params[:id])
      @type.update(type_params)
      render json: @type
    end

    def destroy
      @type = Type.find(params[:id])
      @type.destroy
    end

  private

  def type_params
    params.require(:type).permit(:name)
  end

end
