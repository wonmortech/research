#!/usr/bin/env bash
# Reproduce commands for: Mosques from OpenStreetMap: 2,285 congregations, one layer
# Source: https://wonmor.io/engineering/mosques-from-openstreetmap/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

curl -s https://overpass-api.de/api/interpreter --data-urlencode 'data=[out:json][timeout:150];area["ISO3166-1"="UZ"][admin_level=2]->.c;nwr["amenity"="place_of_worship"]["religion"="muslim"](area.c);out count;'
