#!/usr/bin/env bash

source "$OSH/themes/powerline/powerline.base.sh"

function __powerline_left_segment {
  local OLD_IFS="${IFS}"; IFS="|"
  local params=( $1 )
  IFS="${OLD_IFS}"
  local separator_char=""
  local separator=""

  if [[ "${SEGMENTS_AT_LEFT}" -gt 0 ]]; then
    separator="${separator_char}"
  fi
  LEFT_PROMPT+="${separator}$(set_color ${params[1]} -) ${params[0]} ${normal}"
  (( SEGMENTS_AT_LEFT += 1 ))
}
