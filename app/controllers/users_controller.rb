class UsersController < ApplicationController
  def index
    @list_of_users = User.all.order(username: :asc)
    render(template: "users_html/index")
  end

  def show
    @username = params.fetch("username")
    @the_user = User.where(username: @username).first

    if @the_user == nil
      redirect_to("/404")
    else
      render(template: "users_html/show")
    end
  end
end
