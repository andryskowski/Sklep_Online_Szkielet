class SocksController < ApplicationController
  before_action :set_sock, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /socks
  # GET /socks.json
  def index
    @socks = Sock.all
  end

  # GET /socks/1
  # GET /socks/1.json
  def show
  end

  # GET /socks/new
  def new
    @sock = Sock.new
  end

  # GET /socks/1/edit
  def edit
  end

  # POST /socks
  # POST /socks.json
  def create
    @sock = Sock.new(sock_params)
    @sock.user = current_user

    respond_to do |format|
      if @sock.save
        format.html { redirect_to @sock, notice: 'Sock was successfully created.' }
        format.json { render :show, status: :created, location: @sock }
      else
        format.html { render :new }
        format.json { render json: @sock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /socks/1
  # PATCH/PUT /socks/1.json
  def update
    respond_to do |format|
      if @sock.update(sock_params)
        format.html { redirect_to @sock, notice: 'Sock was successfully updated.' }
        format.json { render :show, status: :ok, location: @sock }
      else
        format.html { render :edit }
        format.json { render json: @sock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /socks/1
  # DELETE /socks/1.json
  def destroy
    @sock.destroy
    respond_to do |format|
      format.html { redirect_to socks_url, notice: 'Sock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sock
      @sock = Sock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sock_params
      params.require(:sock).permit(:model, :description, :title, :price, :image)
    end
end
