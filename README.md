## Usage

## Installation

```
$ git clone git@github.com:dieswaytoofast/elk-docker.git
$ cd ansible
$ ansible-galaxy install -fr requirements.yml
```

## Playbooks
### Names
1. `elk_up.yml` : Bring elk up locally
2. `elk_down.yml` : Take elk down locally

Some helper playbooks

1. `elk` : The 'baseline' playbook that does, well, nothing really (the feature-flags need to be enabled with variables)

### Local Usage
1. Bringing everything up

```
$ cd ansible
$ sudo ansible-galaxy install -r requirements.yml
$ elk_up.yml
```
1. Taking everything down
	
```
$ elk_down.yml
	
```
1. Taking everything down, and flushing all volumes (removes logs!)
	
```
$ elk_down.yml --extra-vars refresh=true
```