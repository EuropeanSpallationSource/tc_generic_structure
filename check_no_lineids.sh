#!/bin/sh
git grep  -e '<LineIds' -- '*.Tc*'
if test $? -ne 1; then
  echo >&2 "LineIds found"
  echo >&2 "Please run"
  if test "$(git config filter.cleanCode.clean)" != 'sed -b -f filter/cleanCode.sed'; then
     echo >&2 "git config filter.cleanCode.clean 'sed -b -f filter/cleanCode.sed'"
  fi
  echo >&2 "git add --renormalize '*.Tc*'"
  exit 1
fi
