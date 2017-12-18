class TricksController < ApplicationController
  before_action :set_trick, only: [:show, :update, :destroy]

  # GET /tricks
  def index
    @tricks = Trick.all

    render json: @tricks
  end

  # GET /tricks/1
  def show
    render json: @trick
  end

  # POST /tricks
  def create
    @trick = Trick.new(trick_params)

    if @trick.save
      render json: @trick, status: :created, location: @trick
    else
      render json: @trick.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tricks/1
  def update
    if @trick.update(trick_params)
      render json: @trick
    else
      render json: @trick.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tricks/1
  def destroy
    @trick.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trick
      @trick = Trick.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def trick_params
      params.require(:trick).permit(:name, :type, :example_video)
    end
end
