class LifeprotipsController < ApplicationController
  before_action :set_lifeprotip, only: [:show, :update, :destroy]

  # GET /lifeprotips
  def index
    @lifeprotips = Lifeprotip.all

    render json: @lifeprotips
  end

  # GET /lifeprotips/1
  def show
    render json: @lifeprotip
  end

  # POST /lifeprotips
  def create
    @lifeprotip = Lifeprotip.new(lifeprotip_params)

    if @lifeprotip.save
      render json: @lifeprotip, status: :created, location: @lifeprotip
    else
      render json: @lifeprotip.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lifeprotips/1
  def update
    if @lifeprotip.update(lifeprotip_params)
      render json: @lifeprotip
    else
      render json: @lifeprotip.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lifeprotips/1
  def destroy
    @lifeprotip.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lifeprotip
      @lifeprotip = Lifeprotip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lifeprotip_params
      params.require(:lifeprotip).permit(:title, :content, :genre, :author)
    end
end
