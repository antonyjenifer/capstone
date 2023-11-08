#!/bin/bash
deploy:
    dockercompose up
    image tag: antonyjenifer/dev:react-v1
