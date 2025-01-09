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



end
