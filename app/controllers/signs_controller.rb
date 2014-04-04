class SignsController < ApplicationController
  before_action :set_instance_variables, only: [:show, :edit, :update]
  def new
    @sign = Sign.new
    @entry = Entry.find_by(@sign.entry_id)
  end

  def create
    @sign = Sign.new(sign_params)
    @entry = Entry.find_by(@sign.entry_id)
      
      respond_to do |format|
        if @sign.save
          format.html { redirect_to @sign, notice: 'Sign was successfully created.' }
          format.json { render action: 'show', status: :created, location: @sign}
        else
          format.html { render action: 'new' }
          format.json { render json: @sign.errors, status: :unprocessable_entity }
        end
    end
  end

  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @sign, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @sign.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @sign.destroy

    respond_to do |format|
      format.html { redirect_to sign_url }
      format.json { head :no_content }
    end
  end

  def index
    @sign = Sign.all
  end

  def show
    @comments = @sign.comments
  end

  private
  def set_instance_variables
    @sign = Sign.find(params[:id])
    @entry = Entry.find(params[:entry_id])
  end

  def sign_params
    params.require(:sign).permit(:video_url, :description, comments_attributes: [:id, :comment])
  end
end
