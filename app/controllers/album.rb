get 'user/:user_id' do
  redirect to "/"
  @user = User.find(params[:id])
  erb :user_albums
end


get '/albums/:album_id' do
  @album = Album.find(params[:album_id])
  erb :album
end


get '/albums/:album_id/:photo_id' do
  # show photo
end
