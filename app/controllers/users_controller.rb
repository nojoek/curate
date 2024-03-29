class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
        @user = User.new
        # @user.username = params[:username]
        #        # @user.password = params[:password]
        #        @user.password_confirmation = params[:password_confirmation]

        if @user.save
          session[:user_id] = @user.id
          redirect_to users_url, :notice => "Created successfully."
        else
          redirect_to new_user_url, :notice => "Username taken."
        end
      end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user.username = params[:username]
        @user.password = params[:password]
        @user.password_confirmation = params[:password_confirmation]

        if @user.save
          redirect_to users_url, :notice => "Updated successfully."
        else
          redirect_to edit_user_url(@user.id), :notice => "Username taken."
        end
      end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
   end
 end

 

