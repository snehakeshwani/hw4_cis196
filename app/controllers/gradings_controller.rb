class GradingsController < ApplicationController
    def grading_params
        params.require(:grading).permit(:percent,:importance,:finalgrade,:task)
    end
  
  def index
      @gradings = Grading.all
  end

  def new
      @grading = Grading.new
  end
  
  def create
          @grading = Grading.new(grading_params)
          if @grading.save
              redirect_to gradings_path
              else
              render 'new'
          end
  end

  def edit
  end

  def show
  end
end
