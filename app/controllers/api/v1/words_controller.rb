class Api::V1::WordsController < ApplicationController

  def index
   @words = Word.all
   render json: @words
  end

  def update
    @word = Word.find(params[:id])

    @word.update(word_params)
    if @word.save
      render json: @word
    else
      render json: {errors: @word.errors.full_messages}, status: 422
    end
  end

  def create
    @word = Word.new(word_params)

    if @word.save
      render json: @word
    else
      render json: {errors: @word.errors.full_messages}, status: 422
    end
  end

  private

  def word_params
    params.permit(:name, :url, :level_id)
  end
end
