
## Agenda

    What is Configuration Management?
    Discussion on Keywords
    Puppet installation and Configuration
    Puppet Module creation
    Ansible installation and configuration
    Ansible adhoc commands and playbooks


## Keyword

    Configuration Management
    Configuration Drift
    Idempotence
    Out-of-Band Changes
    DSL (Domain Specific Language)
    DSC (Desired state configuration)
    I-a-C (Infrastucture-as-Code)
    Tribal Knowledge
    Declarative vs Imperative


## Infrastucture-as-Code

    Terraform
    CloudFormation
    ARM

## CM Tools

    Ansible
    Puppet
    Chef

## ##########################
## Puppet Module Examples
## ##########################

## /etc/puppetlabs/code/environments/production/modules/accounts/manifests/init.pp

    class accounts {
        $rootgroup = $osfamily ? {
            'Debian' => 'sudo',
            'RedHat' => 'wheel',
        }
        include accounts::groups
        user { 'sk12k':
            ensure  => present,
            home    => '/home/username',
            shell   => '/bin/bash',
            managehome  => true,
            gid     => 'sk12k',
            groups  => "$rootgroup",
        }
    }

## /etc/puppetlabs/code/environments/production/modules/accounts/manifests/groups.pp

    class accounts::groups {
      group { 'sk12k':
        ensure => present,
      }
    }

## /etc/puppetlabs/code/environments/production/manifests/site.pp

    node default {
      include accounts
    }

init.pp
site.pp

## Puppet sample Manifest

class sl-automation {
  package { 'tree':
    ensure => 'installed',
  }
  file { '/tmp/sl-automation':
    ensure => 'directory',
  }
  host { 'ubuntu-node':
    ip           => '161.35.170.170',
    host_aliases => 'ubuntu',
  }
  host { 'centos-node':
    ip           => '161.35.170.56',
    host_aliases => 'centos',
  }
}


## References:

  **Chef resources**

    https://learn.chef.io/
    https://api.chef.io/
    https://www.oreilly.com/library/view/chef-recipes/9781788396486/

  **All Resources**

    https://www.jeffgeerling.com/blog/2018/testing-your-ansible-roles-molecule
    https://www.howtoforge.com/tutorial/how-to-setup-puppet-master-and-agent-on-centos-7/
    https://www.puppetcookbook.com/


