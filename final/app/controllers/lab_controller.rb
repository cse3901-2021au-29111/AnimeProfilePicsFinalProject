class LabController < ApplicationController
  def index
    @labs = Lab.all
  end

  def show
    @lab = Lab.find(params[:id])
  end

  def new
    @lab= Lab.new
  end

  def create
    Lab.create(lab_name: params[:lab_name])
    redirect_to lab_index_path
  end

  def edit
  end

  def update
  end

  def destroy
    Lab.find(params[:id]).destroy
    redirect_to lab_index_path
  end
end
