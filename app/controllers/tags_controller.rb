class TagsController < ApplicationController
    before_action :require_login, only: [:destroy]
    
    def show
        @tag = Tag.find(params[:id])
    end

    def index
        @tag = Tag.all
    end

    def destroy
        @tag = Tag.find(params[:id])
        @tag.destroy
    
        flash[:notice] = "Tag '#{@tag.name}' Destroyed!"
        if params[:from]=='list'
            redirect_to :back
            else
            redirect_to root_url 
        end
    end


end
