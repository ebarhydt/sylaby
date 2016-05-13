class ItemsController < ApplicationController
  protect_from_forgery :except => :create
  def show
    
    @item = Item.find(params[:id])
    
    respond_to do |format|
      format.html
      format.js
    end
  
  end

  def create
    render nothing: true
    @item = Item.create(url: "www.message.com", title: "message", author: "message lastname")
    @item.save
  end

end

