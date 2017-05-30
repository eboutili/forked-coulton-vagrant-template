node 'node-01' {
include docker
include docker::compose
}
#class {'docker::compose': ensure => present, }
