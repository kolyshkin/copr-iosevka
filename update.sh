#!/bin/bash

author="Peter Wu"
old_version=15.4.2
new_version=15.5.0

today=$(date "+%a %b %d %T %Z %Y")
content="Release v${new_version}"

entry="* ${today} ${author} - v${new_version}"
entry+="\n"
entry+="- ${content}"

find . -type f -name '*.spec' -exec sed -i -e "/Version:/s/${old_version}/${new_version}/" -e "/%changelog/a ${entry}" {} \;
