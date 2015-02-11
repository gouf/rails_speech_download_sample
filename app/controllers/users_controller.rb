class UsersController < ApplicationController
  # GET /users
  def index
  end

  def download_speech
    words = params[:words][:words]
    lang  = params[:lang]
    basename = 'speech'
    tempfile = Tempfile.open([basename, '.mp3'])
    words.to_file(lang, tempfile.path)
    send_file(tempfile.path)
  end
end
