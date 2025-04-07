# Role Name

A role to install haproxy with keepalived in various situations and configurations.

## Requirements

- ansible-core

## Role Variables

- **haproxy_installation_keepalived_notify_master**: Commands or script executed when the master gets notified, only optional.
- **haproxy_installation_keepalived_failover_file_path**: Path of a file which could optionally be copied to the remote host. This allows to copy a script which could get used as a failover script in combination with the notify_master.
- **haproxy_installation_keepalived_unicast_ip**: Sets the ip on which the keepalived listens, only optional. If not defined the inventory IPs/hostname will be used. Should be used as host var!
- **haproxy_installation_keepalived_unicast_peers**: A list of ips of the keepalived peers, only optional. If not defined the inventory IPs/hostname will be used. Should be used as host var!

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

## License

Apache 2.0

## Contribute

1. Follow the ansible-lint guidelines and run ansible-lint in the root of the repo.

```shell
ansible-lint
```

2. Make sure that the role does succeed, when using the `--check` flag.

```shell
ansible-playbook tests/test.yml --check
```
