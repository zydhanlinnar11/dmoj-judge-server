#!/bin/bash

mount -v -t nfs4 sch-npc-junior.zydhan.xyz:/ /problems

sleep 3

runuser -u judge -- dmoj -c /config/judge.yml sch-npc-junior.zydhan.xyz "$JUDGE_NAME" "$JUDGE_KEY"
