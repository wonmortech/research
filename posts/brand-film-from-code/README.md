# Making a brand film from code

Post: <https://wonmor.io/engineering/brand-film-from-code/>  
Kind: engineering · Area: interfaces · Published: 2026-11-13

## What can be reproduced

Inspect the published film yourself: duration, frame size, frame rate and codecs come straight from the file on wonmor.io.

**Private inputs.** The timeline file, canvas renderer and sound script that generate the film are not published. What you can reproduce is the inspection of the published film itself.

## Commands

Copied verbatim from the post's *Reproduce this* box. Also saved as [`commands.sh`](commands.sh); run the lines one at a time, since some start a server or need a specific checkout.

```bash
ffprobe -v error -show_entries format=duration,size:stream=codec_name,width,height,r_frame_rate -of compact https://wonmor.io/film/wonmor_16x9.mp4
```

## Sources cited in the post

- <https://wonmor.io>
- <https://playwright.dev/docs/api/class-page#page-screenshot>
- <https://ffmpeg.org/ffmpeg-formats.html#image2pipe>
- <https://trac.ffmpeg.org/wiki/Encode/H.264>
- <https://docs.blender.org/manual/en/latest/render/cycles/index.html>

## Licence

Text in this folder: CC BY 4.0. Commands and query files: MIT. See the repository README.
