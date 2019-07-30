class DemosController < ApplicationController
  before_action :set_demo, only: [:show, :edit, :update, :destroy]

  def index
    @demos = Demo.all
  end

  def show
  end

  def new
    @demo = Demo.new
  end

  def edit
  end

  def create
    @demo = Demo.new(demo_params)

    respond_to do |format|
      if @demo.save
        format.html { redirect_to @demo, notice: 'Demo was successfully created.' }
        format.json { render :show, status: :created, location: @demo }
      else
        format.html { render :new }
        format.json { render json: @demo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @demo.update(demo_params)
        format.html { redirect_to @demo, notice: 'Demo was successfully updated.' }
        format.json { render :show, status: :ok, location: @demo }
      else
        format.html { render :edit }
        format.json { render json: @demo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @demo.destroy
    respond_to do |format|
      format.html { redirect_to demos_url, notice: 'Demo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_demo
      @demo = Demo.find(params[:id])
    end

    def demo_params
      params.require(:demo).permit(:title, :user_id)
    end
end
