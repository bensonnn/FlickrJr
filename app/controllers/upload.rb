get '/upload' do

    @user = current_user
    erb :upload

end

post '/upload'do

  filename = params[:file][:filename]
  temp_path = params[:file][:tempfile].path
  Photo.create!(album_id: params[:album_id], file: filename)
  File.open("public/uploads/#{filename}", 'w+')
  FileUtils::cp(temp_path, "public/uploads/#{filename}")
end


