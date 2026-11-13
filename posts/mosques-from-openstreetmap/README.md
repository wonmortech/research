# Mosques from OpenStreetMap: 2,285 congregations, one layer

Post: <https://wonmor.io/engineering/mosques-from-openstreetmap/>  
Kind: engineering · Area: faith-society · Published: 2026-10-27

## What can be reproduced

Count the mosques OpenStreetMap knows in Uzbekistan today with the same filter dtwin uses; the number will drift from ours as mappers edit.

**Private inputs.** The import code that stores the result is in a private repository and is not published. The Overpass query is complete and public; a GeoJSON snapshot made with it is in wonmortech/uz-open-data (mosques/).

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
curl -s https://overpass-api.de/api/interpreter --data-urlencode 'data=[out:json][timeout:150];area["ISO3166-1"="UZ"][admin_level=2]->.c;nwr["amenity"="place_of_worship"]["religion"="muslim"](area.c);out count;'
```

## `query.overpassql`

The full Overpass query from the post, verbatim (it returns every object with tags and a centre point).

```text
[out:json][timeout:150];
area["ISO3166-1"="UZ"][admin_level=2]->.c;
nwr["amenity"="place_of_worship"]["religion"="muslim"](area.c);
out tags center;
```

Run it against the public Overpass API:

```bash
curl -s https://overpass-api.de/api/interpreter --data-urlencode data@query.overpassql -o mosques.json
```

## Sources cited in the post

- <https://wiki.openstreetmap.org/wiki/Overpass_API>
- <https://wiki.openstreetmap.org/wiki/Tag:amenity%3Dplace_of_worship>
- <https://www.openstreetmap.org/copyright>
- dtwinuz/dtwin #43

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
