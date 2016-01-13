#!/bin/bash
# SCript by citrusfizz@gmail.com  v 1.0
# https://github.com/citrusfizz/DigitalOceanDNSUpdater
# to get your Digital Ocean API Key https://cloud.digitalocean.com/settings/api/tokens
#your domain ID
domain_id="xxxx.xxx"
#record to update
record_id="xxxxxxxx"
#your api key
api_key="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"

### don't change ###
ip="$(curl  http://ipecho.net/plain)"
curl -X PUT -H "Content-Type: application/json" -H "Authorization: Bearer $api_key" -d '{"data":"'$ip'"}' "https://api.digitalocean.com/v2/domains/$domain_id/records/$record_id"
