class ArticlesController < ApplicationController

    def index
        # Fetches the records
        @articles = BlogArticle.all
    end

    def show
        @article = BlogArticle.find(params[:id])
    end

    def new
        @article = BlogArticle.new
    end

    def create
        @article = BlogArticle.new(article_params)
        
        if @article.save
            redirect_to articles_path
        else
            render :new
        end
    end

    def edit
        @article = BlogArticle.find(params[:id])
    end

    def update
        @article = BlogArticle.find(params[:id])

        if @article.update(article_params)
            redirect_to articles_path
        else
            render :edit
        end
    
    end

    def delete 
        @article = BlogArticle.find(params[:id])
        @article.delete
        redirect_to articles_path
    end

    private
    
    def article_params
        params.require(:article).permit(:header, :body)
    end
end
