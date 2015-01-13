#!/bin/sh

xctool -workspace ${WORKSPACE_NAME} -scheme ${SCHEME} -configuration Debug -sdk iphonesimulator build
xctool -workspace ${WORKSPACE_NAME} -scheme ${SCHEME} -configuration Debug -sdk iphonesimulator test
