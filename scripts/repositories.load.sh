#!/bin/sh

cd apps/backend || exit 1

git clone https://github.com/stdyum/api-auth.git auth
git clone https://github.com/stdyum/api-studyplaces.git studyplaces
git clone https://github.com/stdyum/api-types_registry.git types_registry
git clone https://github.com/stdyum/api-schedule.git schedule

cd ../frontend || exit 1

git clone https://github.com/stdyum/web.git web
