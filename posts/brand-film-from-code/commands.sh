#!/usr/bin/env bash
# Reproduce commands for: Making a brand film from code
# Source: https://wonmor.io/engineering/brand-film-from-code/
# Copied verbatim from the post. Run line by line; see README.md for the required checkout.

ffprobe -v error -show_entries format=duration,size:stream=codec_name,width,height,r_frame_rate -of compact https://wonmor.io/film/wonmor_16x9.mp4
