class LoginusersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  # config.web_console.whitelisted_ips = '61.247.78.19'

  before_action :set_loginuser, only: [:show, :edit, :update, :destroy]

  # GET /loginusers
  # GET /loginusers.json
  def index
    @loginusers = Loginuser.all
  end
  
  def get_name
    @id = params[:userid]

    @name = Loginuser.find_by(userid: @id)

    render json: @name
    
  end
  
  
  def check
    @id = params[:userid]
    @password = params[:userpw]

    if Loginuser.exists?(userid: @id, userpw: @password)
      @check={'result'=>'true'}.to_json
    else
      @check={'result'=>'false'}.to_json
    end

    render json: @check
  end   

  # GET /loginusers/1
  # GET /loginusers/1.json
  def show
  end

  # GET /loginusers/new
  def new
    @loginuser = Loginuser.new
  end

  # GET /loginusers/1/edit
  def edit
  end

  # POST /loginusers
  # POST /loginusers.json
  
  
  def create
    @name = params[:username] 
    @id = params[:userid]
    @password = params[:userpw]
    
    @login_user=Loginuser.create(username: @name, userid: @id, userpw: @password)
    render json: @login_user
  end






  # PATCH/PUT /loginusers/1
  # PATCH/PUT /loginusers/1.json
  def update
    respond_to do |format|
      if @loginuser.update(loginuser_params)
        format.html { redirect_to @loginuser, notice: 'Loginuser was successfully updated.' }
        format.json { render :show, status: :ok, location: @loginuser }
      else
        format.html { render :edit }
        format.json { render json: @loginuser.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loginusers/1
  # DELETE /loginusers/1.json
  def destroy
    @loginuser.destroy
    respond_to do |format|
      format.html { redirect_to loginusers_url, notice: 'Loginuser was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loginuser
      @loginuser = Loginuser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loginuser_params
      params.require(:loginuser).permit(:username, :userid, :userpw)
    end
end
