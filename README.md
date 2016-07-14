## Usage

## Installation
1. Install everything

	```
	$ git clone git@github.com:dieswaytoofast/elk-docker.git
	$ cd ansible
	$ ansible-galaxy install -fr requirements.yml
	```
1. Kibana is now available on port **5601**
	1. If you are on Vagrant, you'll need to forward port 5601 to be able to get at it.  This implies adding something like the following to your Vagrantfile 
	
	```
	config.vm.network "forwarded_port", guest: 5601, host: 5601
	```
1. **NOTE** : Kibana doesn't create its baseline indexes till there has been at least one logging event.  Once *something* has been logged (e.g., you started `mie`), you can browse to `http://localhost:5601` and mess w/ stuff

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