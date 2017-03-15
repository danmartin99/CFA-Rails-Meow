class MeowPostsController < ApplicationController
  before_action :set_meow_post, only: [:show, :edit, :update, :destroy]

  # GET /meow_posts
  # GET /meow_posts.json
  def index
    @meow_posts = MeowPost.all
  end

  # GET /meow_posts/1
  # GET /meow_posts/1.json
  def show
  end

  # GET /meow_posts/new
  def new
    @meow_post = MeowPost.new
  end

  # GET /meow_posts/1/edit
  def edit
  end

  # POST /meow_posts
  # POST /meow_posts.json
  def create
    @meow_post = MeowPost.new(meow_post_params)

    respond_to do |format|
      if @meow_post.save
        format.html { redirect_to @meow_post, notice: 'Meow post was successfully created.' }
        format.json { render :show, status: :created, location: @meow_post }
      else
        format.html { render :new }
        format.json { render json: @meow_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meow_posts/1
  # PATCH/PUT /meow_posts/1.json
  def update
    respond_to do |format|
      if @meow_post.update(meow_post_params)
        format.html { redirect_to @meow_post, notice: 'Meow post was successfully updated.' }
        format.json { render :show, status: :ok, location: @meow_post }
      else
        format.html { render :edit }
        format.json { render json: @meow_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meow_posts/1
  # DELETE /meow_posts/1.json
  def destroy
    @meow_post.destroy
    respond_to do |format|
      format.html { redirect_to meow_posts_url, notice: 'Meow post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meow_post
      @meow_post = MeowPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meow_post_params
      params.require(:meow_post).permit(:content, :user_id)
    end
end
