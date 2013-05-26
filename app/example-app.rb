require 'sinatra'
#require 'haml'
require 'erb'

module Example
  class App < Sinatra::Base

    current_dir = File.dirname(__FILE__)
    set :public_folder, "#{current_dir}/../public/"

    get '/' do
      #haml :index, :locals => { :name => 'World!' }
      puts current_dir
      erb :index, :locals => { :name => 'World!' }
    end

    get '/:name' do |name|
      #haml :index, :locals => { :name => name }
      erb :index, :locals => { :name => name }
    end
  end
end
