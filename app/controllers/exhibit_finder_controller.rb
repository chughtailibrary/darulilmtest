# frozen_string_literal: true

##
# This is a simple controller to return the ExhibitFinder JSON response for a given ID (druid)
class ExhibitFinderController < ApplicationController
  before_action do
    headers['Access-Control-Allow-Origin'] = '*'
  end

  # /exhibit_finder/:id
  def show
    render json: ExhibitFinder.find(params[:id])
  end

  # /exhibit_finder
  def index
    render json: ExhibitFinder.search(params[:q])
  end
end
