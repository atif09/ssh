# Class: ssh
# ===========================
#
# Full description of class ssh here.
#
# Parameters
# ----------
#
# Document parameters here.
#
# * `sample parameter`
# Explanation of what this parameter affects and what it defaults to.
# e.g. "Specify one or more upstream ntp servers as an array."
#
# Variables
# ----------
#
# Here you should define a list of variables that this module would require.
#
# * `sample variable`
#  Explanation of how this variable affects the function of this class and if
#  it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#  External Node Classifier as a comma separated list of hostnames." (Note,
#  global variables should be avoided in favor of class parameters as
#  of Puppet 2.6.)
#
# Examples
# --------
#
# @example
#    class { 'ssh':
#      servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#    }
#
# Authors
# -------
#
# Author Name Mohammed Jawad Hussain 
#
# Copyright
# ---------
#
# Copyright 2018 Mohammed Jawad Hussain 
#
class ssh {
    file {'/etc/ssh/sshd_config':
       source => 'puppet:///modules/ssh/sshd_config',
       notify => Service['sshd'],
       mode => '0600',
      }
    service { 'sshd':
       ensure => 'running',
       enable => 'true',
      }
}
