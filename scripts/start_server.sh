#!/bin/bash
service docker start
export MOODLE_DOCKER_WWWROOT=/moodle-wwdata
export MOODLE_DOCKER_DB=pgsql
/bin/sh /moodle/moodle-docker/bin/moodle-docker-compose down
cp /moodle/moodle-docker/config.docker-template.php $MOODLE_DOCKER_WWWROOT/config.php
/bin/sh /moodle/moodle-docker/bin/moodle-docker-compose up -d
/bin/sh /moodle/moodle-docker/bin/moodle-docker-wait-for-db
