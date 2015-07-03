class PostImportsController < ApplicationController
  def new
    @post_import = PostImport.new
  end
  
  def create
    @post_import = PostImport.new(post_import_params)
    
    if @post_import.save
      redirect_to root_url, notice: "Imported posts successfully."
    else
      render :new
    end
  end
  
  private
  
  def post_import_params
    params.require(:post_import).permit(:file)
  end
end
