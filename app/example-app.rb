require 'sinatra'
require 'haml'

module Example
  class App < Sinatra:Base

    get '/' do
      haml :index
    end
  end
end
