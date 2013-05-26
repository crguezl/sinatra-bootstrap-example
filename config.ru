#\ -s puma
$LOAD_PATH.unshift(File.dirname(__FILE__))
appdir = File.dirname(__FILE__)+'/app'
$LOAD_PATH.unshift(appdir) unless $LOAD_PATH.include? appdir
require 'app/example-app.rb'
run Example::App
