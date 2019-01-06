class ArticlesController < ApplicationController 
  def new 
    @article = Article.new 
  end 
  
  def create 
    @article = Article.new(article_params)
    if @article.save
        flash[:notice] = "Article was successfully saved."
        redirect_to articles_path(@article)
    else 
        render 'new'
    end 
  end 
  
  def show 
    @article = Article.find(params[:id])
  end 
  
  def edit
   @article = Article.find(params[:id])
  end
  
  def update
  @article = Article.find(params[:id])
    if @article.update(article_params)
      flash[:notice] = "Article was successfully updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end
  
  private 
  
    def article_params
      params.require(:article).permit(:title, :description)
    end 
    
    
end 