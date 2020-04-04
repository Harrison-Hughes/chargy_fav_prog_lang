class GitHubUserController < ApplicationController

  def new 

    @git_hub_user = GitHubUser.new
    render :find
    
  end

  def show

    @git_hub_user = GitHubUser.find_by(id: params[:id])
    render :show

  end

  def create

    @error = false

    if GitHubUser.user_exists(git_hub_user_params['username'])

      @git_hub_user = GitHubUser.new(git_hub_user_params)
      @git_hub_user.favourite_language = @git_hub_user.fav_prog_lang

      if @git_hub_user.save

        redirect_to "/git_hub_users/#{@git_hub_user.id}"
      
      else 

        @error = 'error finding message'
        render :find

      end

    else 

      @not_found_username = git_hub_user_params['username']
      @error = 'user not found'
      render :user_not_found

    end 
  end 


  # TRY THIS IF ABOVE WORKS

  # def create
  #   if GitHubUser.user_exists(username)
  #     @user = User.new(user_params)
  #     @user.favourite_language = @user.fav_prog_lang
  #     if @user.save
  #       redirect_to user_path(@user)
  #     end
  #   end 
  #   render :find
  # end 
  
  private

    def git_hub_user_params
        params.require(:git_hub_user).permit(:username)
    end 

end
