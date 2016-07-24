.PHONY = up down teardown restart refresh ingest process run workflow-logs \
    asset-logs keyframes-logs cloudvision-logs
URL = http://www.sample-videos.com/video/mp4/720/big_buck_bunny_720p_10mb.mp4

up:
	./PB_elk_up.yml --extra-vars "base_username=vagrant elk_config_file=aws_config.yml"

down:
	./PB_elk_down.yml --extra-vars "base_username=vagrant elk_config_file=aws_config.yml"

teardown:
	./PB_elk_down.yml --extra-vars "base_username=vagrant refresh=true elk_config_file=aws_config.yml"

restart: down up

refresh: teardown up
