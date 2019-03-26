class CdLabelsController < ApplicationController
  def new

  end

  def create
    @cd_label = CdLabel.new(cd_label_params)
    @cd_label.save
    flash[:notice] = "Label was successfully created."
    redirect_to cd_labels_path
  end

  def index
    @cd_label = CdLabel.new
    @cd_labels = CdLabel.all
    render layout: false
  end

  def show
  end

  def edit
    @cd_label = CdLabel.find(params[:id])
    render layout: false
  end

  def update
    cd_label = CdLabel.find(params[:id])
    cd_label.update(cd_label_params)
    flash[:notice] = "Label was successfully updated."
    redirect_to cd_labels_path

  end

  def destroy
    @cd_label = CdLabel.find(params[:id])
    @cd_label.destroy
    flash[:notice] = "Label was successfully destroyed."
    redirect_to cd_labels_path
  end

   private
    def cd_label_params
      params.require(:cd_label).permit(:label_name)
    end
end