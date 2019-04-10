class AnagramasController < ApplicationController
  before_action :set_anagrama, only: [:show, :update, :destroy]

  # GET /anagramas
  def index
    @anagramas = Anagrama.all

    render json: @anagramas
  end

  # GET /anagramas/1
  def show
    render json: @anagrama
  end

  # POST /anagramas
  def create
    @anagrama = Anagrama.new(anagrama_params)

    if @anagrama.save
      render json: @anagrama, status: :created, location: @anagrama
     
    else
      render json: @anagrama.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /anagramas/1
  def update
    if @anagrama.update(anagrama_params)
      render json: @anagrama
    else
      render json: @anagrama.errors, status: :unprocessable_entity
    end
  end

  # DELETE /anagramas/1
  def destroy
    @anagrama.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anagrama
      @anagrama = Anagrama.find(params[])
    end

    # Only allow a trusted parameter "white list" through.
    def anagrama_params
      params.require(:anagrama).permit(:wordA, :wordB,:isAnagrama)
    end
end
