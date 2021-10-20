class profile::agent_nodes {
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
  include host { 'web.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
  include host { 'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
  dockeragent::node { 'minetest.puppet.vm': }
}
