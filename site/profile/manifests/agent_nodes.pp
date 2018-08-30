class profile::agent_nodes {
  include dockeragent
  include docker
  docker::node {'web.puppet.vm'}
  docker::node {'db.puppet.vm'}
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
}
