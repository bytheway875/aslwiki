class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]
  def new
    @entry = Entry.new
    @entry.signs.build
  end

  def create
    @entry = Entry.new(entry_params)
      
      respond_to do |format|
      if @entry.save
        format.html { redirect_to @entry, notice: 'Entry was successfully created.' }
        format.json { render action: 'show', status: :created, location: @entry }
      else
        format.html { render action: 'new' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @entry.update(entry_params)
        format.html { redirect_to @entry, notice: 'Entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @entry.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def destroy
    @entry.destroy

    respond_to do |format|
      format.html { redirect_to entry_url }
      format.json { head :no_content }
    end
  end

  def index
    @entries = Entry.all
  end

  def show
    @sign = @entry.signs
  end

  private
  def set_entry
    @entry = Entry.find(params[:id])
  end

  def entry_params
    params.require(:entry).permit(:word, signs_attributes: [:id, :video_url, :description])
  end
end