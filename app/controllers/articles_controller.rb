class ArticlesController < ApplicationController

    def index
        # Fetches the records
        @articles = BlogArticle.all
    end

    def show
    
    end

    def new
        @article = BlogArticle.new
    end

    def create
        @article = BlogArticle.new(article_params)
        
        if @article.save
            redirect_to article_path
        else
            render :new
        end
    end

    def edit
    
    end

    def update
    
    end

    def delete 

    end

    private
    
    def article_params
        params.require(:article).permit(:title, :body)
    end
end
