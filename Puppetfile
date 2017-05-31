#!/usr/bin/ruby env

require "socket"
$hostname = Socket.gethostname

forge 'http://forge.puppetlabs.com'

# After messing around with revising the Puppetfile contents from the book, found that this
# combination works except for having to work around a validate_integer depcrecation issue.
#
#mod 'puppetlabs/stdlib', '4.1.0'
#mod 'garethr/docker', '5.3.0'
#mod 'puppetlabs-docker_platform', '2.2.1'

# These are the versions used in the TSE demo repo currently which I used troubleshooting.
#mod 'puppetlabs/stdlib', '4.17.0'
#mod 'garethr/docker', '5.2.0'
#mod 'puppetlabs-docker_platform', '2.1.0'

# I originally didn't think this worked (followed a red herring for a while), but it does, so
# use this instead of the above obviously.
mod 'puppetlabs/stdlib', :latest
mod 'garethr/docker', :latest
mod 'puppetlabs-docker_platform', :latest

