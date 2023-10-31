class StaticPagesController < ApplicationController
  def index
    flickr = Flickr.new(Figaro.env.flickr_key, Figaro.env.flickr_secret)

    unless params[:user_id].nil?
      @photos = flickr.people.getPublicPhotos user_id: params[:user_id]
    end
  end
end
