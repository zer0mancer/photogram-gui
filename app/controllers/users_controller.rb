class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({:username => :asc })
    render({:template => "user_templates/index"})
  end
  
  def details
input_username = params.fetch("path_id")

matching_username = User.where({:username => input_username})

@the_user = matching_username.at(0)
  if @the_user == nil
    redirect_to("/404")
  else
  render({:template => "user_templates/details"})
  end

end

def create
  input_username = params.fetch("username_box")

  new_user = User.new
  new_user.username = input_username

  new_user.save
  redirect_to("/users/" + new_user.username)

end

def update

  the_user = params.fetch("path_id")

  matching_user = User.where(:username => the_user)
  @the_user = matching_user.at(0)
  @the_user.username = params.fetch("username")

  @the_user.save

  redirect_to("/users/" + @the_user.username)

end



end
