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
1. **NOTE - Kibana** : Kibana doesn't create its baseline indexes till there has been at least one logging event.  Once *something* has been logged (e.g., you started `mie`), you can browse to `http://localhost:5601` and mess w/ stuff

1. **NOTE - AWS** : You'll need to create an *aws_config.yml* file in the ansible directory. For format, look in the *ansible_aws* module (*requirements.yml*), and do something like `PB_aws_up.yml --extra-vars elk_config_file=aws_config.yml`   Also, this presupposes permissions.
## Playbooks
### Names
1. `PB_elk_up.yml` : Bring elk up locally
2. `PB_elk_down.yml` : Take elk down locally
1. `PB_aws_up.yml` : Bring elk up on AWS
2. `PB_aws_down.yml` : Take elk down on AWS


### Local Usage
1. Bringing everything up

```
$ cd ansible
$ sudo ansible-galaxy install -r requirements.yml
$ PB_elk_up.yml
```
1. Taking everything down
	
```
$ PB_elk_down.yml
	
```
1. Taking everything down, and flushing all volumes (removes logs!)
	
```
$ PB_elk_down.yml --extra-vars refresh=true
```

1. Bringing everything up on AWS

```
$ cd ansible
$ sudo ansible-galaxy install -r requirements.yml
$ PB_aws_up.yml
```
1. Taking everything down
	
```
$ PB_aws_down.yml
	
```
