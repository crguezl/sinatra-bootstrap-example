require 'sinatra'
require 'haml'

module Example
  class App < Sinatra::Base

    get '/' do
      haml :index, :locals => { :name => 'World!' }
    end

    get '/:name' do |name|
      haml :index, :locals => { :name => name }
    end
  end
end
