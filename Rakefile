require 'bundler'

desc "Generate the gollum site. $PORT defaults to 3011"
task :generate do
  sh "bundle exec gollum-site generate --working --allow_elements iframe --allow_attributes src --allow_protocols http,https"
end

desc "Run the gollum server"
task :serve do
  port = ENV['PORT'] || "3011"
  sh "bundle exec gollum-site serve --watch -p #{port}"
end

desc "Generate and run the gollum site in development mode"
task :dev => [:generate, :serve]

desc "Deploy to stage environment"
task :stage do
  sh "ey deploy --no-migrate -e EY_Documentation_clone"
end

desc "Deploy to production environment"
task :production do
  sh "ey deploy --no-migrate -e EY_Documentation"
end

namespace :db do
  task :migrate do
  end
end
