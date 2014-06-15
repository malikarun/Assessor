class PublicController < ApplicationController

  def index

  end

  def search
    @best = Best.new
    @dud = Dud.new
  end
end