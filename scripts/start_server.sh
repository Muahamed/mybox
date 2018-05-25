#!/bin/bash
service docker start
export MOODLE_DOCKER_WWWROOT=/moodle-wwdata
export MOODLE_DOCKER_DB=pgsql
cp /moodle/moodle-docker/config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php
/bin/sh /moodle/moodle-docker/bin/moodle-docker-compose up
/bin/sh /moodle/moodle-docker/bin/moodle-docker-wait-for-db
