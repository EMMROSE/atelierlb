class WorksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @works = Work.search_by_title_category(params[:query])
    else @works = Work.all
    end
    if @works.count == 0
        @works = Work.all
    end
  end

  def show
    @work = Work.find(params[:id])
  end

  def new
    @work = Work.new
  end

  def create
    @work = Work.new(work_params)

    if @work.save
      flash.notice = "Thank you! you add successfully a new work."
      redirect_to root_path
    else
      #flash.now[:error] = t('flash.work.error_html')
      render :new
    end
  end

  def edit
    @work = Work.find(params[:id])
  end

  def update
    @work = Work.find(params[:id])
    if @work.update(work_params)
      redirect_to work_path(@work)
    else render :edit
    end
  end

  def destroy
    @work = Work.find(params[:id])
    @work.destroy
    # no need for app/views/books/destroy.html.erb
    redirect_to works_path
  end

  private

  def work_params
    params.require(:work).permit(:title, :category, :description, :cover, previews: [])
  end
end
