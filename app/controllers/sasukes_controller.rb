class SasukesController < ApplicationController
    
    before_action :authenticate_user!, only: [:new, :create]

    def top
    end

    def new
        @sasuke = Sasuke.new
    end

    def create
        activity = Sasuke.new(sasuke_params)

        activity.user_id = current_user.id 

        if activity.save!
            redirect_to :action => "index"
        else
            redirect_to :action => "new"
        end
    end
    
    def show
        @content = Sasuke.find(params[:id])
        @sasukes = Sasuke.all
    end

    def edit
        @content = Sasuke.find(params[:id])
    end
    
    def update
        content = Sasuke.find(params[:id])
        if content.update(sasuke_params)
            redirect_to :action => "show", :id => content.id
        else
            redirect_to :action => "new"
        end
    end

    def destroy
        content = Sasuke.find(params[:id])
        content.destroy
        redirect_to action: :index
    end

    def record
    end
    
    def index
        @sasukes = Sasuke.order(created_at: :asc)   # 古い投稿が先に表示
    end


    def manager
    end
    
    private
    def sasuke_params
        params.require(:sasuke).permit(:title, :about, :image)
    end
end
