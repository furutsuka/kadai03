class UsersController < ApplicationController
  before_action :authenticate_user!

    def index
      @users = User.all
      @user = current_user
      @book = Book.new
      
    end
    
    def new 
    end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
        redirect_to user_path(current_user)
    end
    
  end

  def show
   @book = Book.new
   @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    if @user.save
      redirect_to user_path(@user.id), notice: "Book was successfully created."
    else
      render :edit
    end
  end
  


  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end
end

def user_params
  params.require(:user).permit(:name, :introduction, :profile_image)
end

