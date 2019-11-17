# Homebrew formulas
This is where my formulas initially land.

## Current formulas:
### nsc
A tool for creating NATS account and user access configurations.
[Read the docs here](https://nats-io.github.io/nsc/)

[See the code](https://github.com/nats-io/nsc)
### nk
Tool that generates nkeys for NATS. 

[Read the docs here](https://docs.nats.io/nats-tools/nk)

[See the code](https://github.com/nats-io/nkeys)
### nats-tls
Tool for generating TLS keys and certificates for NATS.

[See the code](https://github.com/tanelmae/nats-tls)

### natscmd
Simple NATS client for quick and dirty manual configuration testing

[See the code](https://github.com/tanelmae/natscmd)

### denv
Simple docker-compose wrapper for git based projects. Wrapper so that docker-compose command can be run from any path inside git repo. Docker compose environment is expected to be in env directory in the root of the repo and it must include docker-compose.yaml.



Installaton with Homebrew:
`brew install tanelmae/brew/<formula-name>`

Add tap:
`brew tap tanelmae/brew`