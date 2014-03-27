enable :sessions



post '/' do
  @user = User.find_by(username: params[:username])
  # @user = User.authenticate(username: params[:username], password: params[:password])
  if @user && @user.authenticate(params[:password])
    p 'hello'
    session[:user] = @user
    redirect to '/upload'
  else
    redirect to '/'
  end
end

post '/new' do
  @user = User.new(username: params[:username], password: params[:password])
  if @user.save
    session[:user] = @user
    redirect to '/upload'
  else
    redirect to '/'
  end
end

get '/logout' do
  session.clear
  redirect to '/'
end
