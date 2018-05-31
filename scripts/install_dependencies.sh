#!/bin/bash
#!/bin/bash
export MOODLE_DOCKER_WWWROOT=/moodle-wwdata
export MOODLE_DOCKER_DB=pgsql
/bin/sh /moodle/moodle-docker/bin/moodle-docker-compose down
yum install -y telnet
rm -rf /moodle-wwdata/*
