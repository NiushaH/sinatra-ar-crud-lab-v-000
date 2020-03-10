#  RUN rake db:migrate SINATRA_ENV=test


require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  get '/articles/:id' do
    @article = Article.find(params[:id])
    erb :show
  end

 
#   get '/articles' do
#     @articles = Article.all
#     erb :index
#   end

 
#   get '/articles/:id' do
#     @article = Article.find(params[:id])
#     erb :show
#   end


# #new 
#   get '/articles/new' do
#     erb :new
#   end

#   get '/' do
#     redirect to "/articles/:id"
#   end


#   post '/articles' do
#     @article = Article.create(:title => params[:title], :content => params[:content])
#     redirect to "/articles/#{@article.id}"
#   end
 


# #update
#   get '/articles/:id/edit' do  #load edit form
#     @article = Article.find_by_id(params[:id])
#     erb :edit
#   end
   
#   patch '/articles/:id' do #edit action
#     @article = Article.find_by_id(params[:id])
#     @article.title = params[:title]
#     @article.content = params[:content]
#     @article.save
#     redirect to "/articles/#{@article.id}"
#   end


#   delete '/articles/:id' do 
#     @article = Article.find_by_id(params[:id])
#     @article.title = params[:title]
#     @article.content = params[:content]
#     @article.delete
#     @article.save
#     redirect to "/articles/"
#   end

end





  # # new
  # get "/articles/new" do
  #   @article = Article.new
  #   erb :new
  # end

  # get '/' do
  #   redirect to "/articles"
  # end

  # # index
  # get "/articles" do
  #   @articles = Article.all
  #   erb :index
  # end


  # # create
  # post "/articles" do
  #   @article = Article.create(params)
  #   redirect to "/articles/#{ @article.id }"
  # end

  # # show
  # get "/articles/:id" do
  #   @article = Article.find(params[:id])
  #   erb :show
  # end
  
  # # edit
  # get "/articles/:id/edit" do
  #   @article = Article.find(params[:id])
  #   erb :edit
  # end

  # # update
  # patch "/articles/:id" do
  #   @article = Article.find(params[:id])
  #   @article.update(params[:article])
  #   redirect to "/articles/#{ @article.id }"
  # end

  # #delete
  # delete "/articles/:id" do
  #   Article.clear(params[:id])
  #   redirect to "/articles"
  # end