#!/bin/bash

echo "Entre une URL en provenance du site Youtube Sensei :"
read URL
youtube-dl -x "$URL" 2>/dev/null