#!/usr/bin/env bash

service="event_db"
pass="_pass"

sudo -u postgres psql -c "create user $service"
sudo -u postgres psql -c "alter user $service with createdb"
sudo -u postgres psql -c "alter user $service with password '$service$pass'"
