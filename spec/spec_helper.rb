require "docker"
require "serverspec"

set :backend, :docker
set :docker_url, ENV["DOCKER_HOST"]
set :docker_image, "honeniq/infraci"

Excon.defaults[:ssl_verify_peer] = false
