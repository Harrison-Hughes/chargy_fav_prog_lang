class GitHubUsersController < ApplicationController

  def new 
    @git_hub_user = GitHubUser.new
    render :find
  end

  def show
    @git_hub_user = GitHubUser.find(params[:id])
    render :show
  end   

  def create
    @user = User.new(user_params)

    @user.favourite_language = @user.favourite_programming_language(@user.username)

    if @user.save
        redirect_to user_path(@user)
    else 
        render :find
    end 
  end 
  
  private

    def git_hub_user_params
        params.require(:git_hub_user_params).permit(:username)
    end 

end
