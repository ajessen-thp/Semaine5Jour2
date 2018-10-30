class UserController < ApplicationController
  def index
    @users = User.order(created_at: :desc).all
  end

  def new
  end

  def create
    @errors = Hash.new
    if request.post?

      if defined?(params[:user])
        username = params[:user][:username]
        email = params[:user][:email]
        bio = params[:user][:bio]
      else
        username = params[:username]
        email = params[:email]
        bio = params[:bio]
      end

      patern_email = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/

      if username == nil || username == ""
        @errors["username"] = "Username empty"
      end
      if email == nil || email == "" || !patern_email.match(email)
        @errors["email"] = "Wrong email or empty"
      end
      if bio == nil || bio == ""
        @errors["bio"] = "Bio empty"
      end

      if @errors == {}

        user = User.new
        user.username = username
        user.email = email
        user.bio = bio
        user.save

        validate = Hash.new
        validate["succes_add"] = 'User added'

        redirect_to '/', alert: validate

      else
        redirect_to '/user/new', alert: @errors
      end
    else
      @errors[:post] = "Fail"
      redirect_to '/user/new', alert: @errors
    end
  end
end
