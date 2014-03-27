get '/users' do
  @users = User.all
  erb :users
end

get '/users/:user_id' do
  @user = User.find(params[:user_id])
  erb :user_albums
end
