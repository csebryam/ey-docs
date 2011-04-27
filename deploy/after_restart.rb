sudo "lsof -n -i 'TCP:80' -Fp | cut -c 2-6 | xargs kill -9"

sudo "cd #{current_path} && rm -rf _site"

run "cd #{current_path} && bundle exec gollum-site generate --allow_elements iframe --allow_attributes src --allow_protocols http,https"
sudo "cd #{current_path} && bundle exec gollum-site serve --port 80 &"