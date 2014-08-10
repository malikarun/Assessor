class TopicsController < ApplicationController
  before_filter :set_topic, except: [:index, :new, :create]

  def index
    @topics = Topic.all
  end

  def show
  end

  def new
    @topic = Topic.new
  end

  def edit
  end

  def create
    @topic = current_user.topics.new topic_params
    if @topic.save!
      redirect_to topics_path, notice: 'Topic was successfully created.'
    else
      render action: :new
    end
  end

  def update
    if @topic.update! topic_params
      redirect_to topics_path, notice: 'Topic was successfully updated.'
    else
      render action: :edit
    end
  end

  def destroy
    @topic.destroy
    redirect_to topics_path, notice: 'Topic was successfully deleted.'
  end

  def lock
    if @topic.locked
       @topic.update(locked: false)
       redirect_to topics_path
    else
      @topic.update(locked: true, sticky: false)
      redirect_to topics_path
    end
  end

  def sticky
    if @topic.sticky?
       @topic.update sticky: false
       redirect_to topics_path
    else
      @topic.update sticky: true
      redirect_to topics_path
    end
  end

private
  def set_topic
    @topic = Topic.find params[:id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def topic_params
     params.require(:topic).permit!
  end
end