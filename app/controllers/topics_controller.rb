class TopicsController < ApplicationController
  # GET /topics/1
  def show
    @topic = Topic.find_by_slug!(params[:id])
  end

  # GET /topics/new
  def new
    @topic = Topic.new
  end

  # POST /topics
  def create
    @topic = Topic.new(topic_params)

    if @topic.save
      redirect_to @topic, notice: 'Topic was successfully created.'
    else
      render :new
    end
  end

  private
    # Only allow a trusted parameter "white list" through.
    def topic_params
      params.require(:topic).permit(:name, :slug)
    end
end
