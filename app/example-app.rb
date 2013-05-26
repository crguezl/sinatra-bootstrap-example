require 'sinatra'
require 'haml'
#require 'erb'

module Example
  class App < Sinatra::Base

    current_dir = File.dirname(__FILE__)
    set :public_folder, "#{current_dir}/../public/"

    get '/' do
      puts current_dir
      haml :index, :locals => { :name => 'Class!' }
      #erb :index, :locals => { :name => 'Class!' }
    end

    get '/:name' do |name|
      haml :index, :locals => { :name => name }
      #erb :index, :locals => { :name => name }
    end
  end
end
