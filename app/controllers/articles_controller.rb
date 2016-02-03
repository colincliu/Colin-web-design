class ArticlesController < PagesController
  
  
  
  def index
    render layout: 'devblog'
  end
  
  def new
    @article = Article.new
    render layout: 'devblog'
  end
  
  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "article was successfully created"
      redirect_to article_path(@article) 
    else
      render 'new', layout: 'devblog'
    end
  end
  
  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
  
end