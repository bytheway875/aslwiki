class commenttsController < ApplicationController
before_action :set_instance_variables, only: [:show, :destroy]
  def new
    @comment = comment.new
  end

  def create
    @comment = comment.new(comment_params)
      
      respond_to do |format|
        if @comment.save
          format.html { redirect_to @comment, notice: 'comment was successfully created.' }
          format.json { render action: 'show', status: :created, location: @comment}
        else
          format.html { render action: 'new' }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
    end
  end

  def update
  end

  def edit
  end

  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comment_url }
      format.json { head :no_content }
    end
  end

  def index
    @comments = Comments.all
  end

  def show
    @comments = Comments.all
  end

  private
  def set_comment
    @comment = comment.find(params[:id])
  end
  
  def comment_params
    params.require(:comment).permit(:content)
  end
end

