{"filter":false,"title":"puma.rb","tooltip":"/sample_app/config/puma.rb","ace":{"folds":[],"scrolltop":3,"scrollleft":0,"selection":{"start":{"row":7,"column":25},"end":{"row":7,"column":25},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"75277d04ddf6b1a2e4ea23746f8ddb0ce953534a","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":56,"column":0},"action":"remove","lines":["# Puma can serve each request in a thread from an internal thread pool.","# The `threads` method setting takes two numbers: a minimum and maximum.","# Any libraries that use thread pools should be configured to match","# the maximum value specified for Puma. Default is set to 5 threads for minimum","# and maximum; this matches the default thread size of Active Record.","#","threads_count = ENV.fetch(\"RAILS_MAX_THREADS\") { 5 }","threads threads_count, threads_count","","# Specifies the `port` that Puma will listen on to receive requests; default is 3000.","#","port        ENV.fetch(\"PORT\") { 3000 }","","# Specifies the `environment` that Puma will run in.","#","environment ENV.fetch(\"RAILS_ENV\") { \"development\" }","","# Specifies the number of `workers` to boot in clustered mode.","# Workers are forked webserver processes. If using threads and workers together","# the concurrency of the application would be max `threads` * `workers`.","# Workers do not work on JRuby or Windows (both of which do not support","# processes).","#","# workers ENV.fetch(\"WEB_CONCURRENCY\") { 2 }","","# Use the `preload_app!` method when specifying a `workers` number.","# This directive tells Puma to first boot the application and load code","# before forking the application. This takes advantage of Copy On Write","# process behavior so workers use less memory. If you use this option","# you need to make sure to reconnect any threads in the `on_worker_boot`","# block.","#","# preload_app!","","# If you are preloading your application and using Active Record, it's","# recommended that you close any connections to the database before workers","# are forked to prevent connection leakage.","#","# before_fork do","#   ActiveRecord::Base.connection_pool.disconnect! if defined?(ActiveRecord)","# end","","# The code in the `on_worker_boot` will be called if you are using","# clustered mode by specifying a number of `workers`. After each worker","# process is booted, this block will be run. If you are using the `preload_app!`","# option, you will want to use this block to reconnect to any threads","# or connections that may have been created at application boot, as Ruby","# cannot share connections between processes.","#","# on_worker_boot do","#   ActiveRecord::Base.establish_connection if defined?(ActiveRecord)","# end","#","","# Allow puma to be restarted by `rails restart` command.","plugin :tmp_restart",""],"id":2},{"start":{"row":0,"column":0},"end":{"row":16,"column":3},"action":"insert","lines":["","workers Integer(ENV['WEB_CONCURRENCY'] || 2)","threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 5)","threads threads_count, threads_count","","preload_app!","","rackup      DefaultRackup","port        ENV['PORT']     || 3000","environment ENV['RACK_ENV'] || 'development'","","on_worker_boot do","  # Worker specific setup for Rails 4.1+","  # See: https://devcenter.heroku.com/articles/","  # deploying-rails-applications-with-the-puma-web-server#on-worker-boot","  ActiveRecord::Base.establish_connection","end"]}]]},"timestamp":1520842147457}