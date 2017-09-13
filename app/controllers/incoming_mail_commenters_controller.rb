class IncomingMailCommentersController < ApplicationController
  before_action :set_incoming_mail_commenter, only: [:show, :edit, :update, :destroy]

  # GET /incoming_mail_commenters
  # GET /incoming_mail_commenters.json
  def index
    @incoming_mail_commenters = IncomingMailCommenter.all
  end

  # GET /incoming_mail_commenters/1
  # GET /incoming_mail_commenters/1.json
  def show
  end

  # GET /incoming_mail_commenters/new
  def new
    @incoming_mail_commenter = IncomingMailCommenter.new
  end

  # GET /incoming_mail_commenters/1/edit
  def edit
  end

  # POST /incoming_mail_commenters
  # POST /incoming_mail_commenters.json
  def create
    @incoming_mail_commenter = IncomingMailCommenter.new(incoming_mail_commenter_params)

    respond_to do |format|
      if @incoming_mail_commenter.save
        format.html { redirect_to @incoming_mail_commenter, notice: 'Incoming mail commenter was successfully created.' }
        format.json { render :show, status: :created, location: @incoming_mail_commenter }
      else
        format.html { render :new }
        format.json { render json: @incoming_mail_commenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incoming_mail_commenters/1
  # PATCH/PUT /incoming_mail_commenters/1.json
  def update
    respond_to do |format|
      if @incoming_mail_commenter.update(incoming_mail_commenter_params)
        format.html { redirect_to @incoming_mail_commenter, notice: 'Incoming mail commenter was successfully updated.' }
        format.json { render :show, status: :ok, location: @incoming_mail_commenter }
      else
        format.html { render :edit }
        format.json { render json: @incoming_mail_commenter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incoming_mail_commenters/1
  # DELETE /incoming_mail_commenters/1.json
  def destroy
    @incoming_mail_commenter.destroy
    respond_to do |format|
      format.html { redirect_to incoming_mail_commenters_url, notice: 'Incoming mail commenter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incoming_mail_commenter
      @incoming_mail_commenter = IncomingMailCommenter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def incoming_mail_commenter_params
      params.require(:incoming_mail_commenter).permit(:commenter, :body)
    end
end
