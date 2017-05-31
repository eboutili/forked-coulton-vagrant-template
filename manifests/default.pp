node 'node-01' {
   include 'docker'
#  include 'docker::compose'    # Redundant: docker::compose class is redundant (completely, I think) when using docker::run below.

  docker::image { 'mynginx_i':
    ensure      => 'present',
    docker_dir => '/vagrant',   # Image assembly comes from the Dockerfile in this directory
    require => Class['docker'],
  }

  docker::run { 'mynginx_c':
    image    => 'nginx',
    ports    => '80:80',        # Don't define ports using array any more
    hostname =>  'nginx',
    require => Docker::Image['mynginx_i'],
  }
}
