# frozen_string_literal: true

# ManualsController handles actions related to manuals management.
class ManualsController < ApplicationController
  def index
    @categories = Manual.select(:category).distinct.order(:category)
  end

  def show
    # @manuals = Manual.where(category: params[:category])
    @manuals = Manual.where('category LIKE ?', "#{params[:category]}%")
  end
end
