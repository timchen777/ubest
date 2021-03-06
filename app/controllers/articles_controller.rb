class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
      @article = Article.new(article_params)
      
      if @article.save
         redirect_to articles_path, notice: "The article #{@article.name} has been uploaded."
      else
         render "new"
      end  
  end

  def destroy
     @article = Article.find(params[:id])
     @article.destroy
     redirect_to articles_path, notice:  "The article #{@article.name} has been deleted."
  end
  
  private
    def article_params
    params.require(:article).permit(:name, :attachment)
    end
end
