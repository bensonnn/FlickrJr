get '/upload' do
  if session[:user]
    @user = session[:user]
    erb :upload
  else
    redirect to '/'
  end
end

post '/upload'do
  puts params
end


