#!/bin/bash

echo "=============================================================="
echo "dirsAddGitIgnore.sh"
echo "=============================================================="
echo
echo "Creating .gitignore files in empty directories ..."
for URL in `find . -type d | grep -v \.git`; do
    if [ `ls $URL | wc -l` -eq 0 ]; then
        echo "touch $URL/.gitignore"
        echo "git add -f $URL/.gitignore"
    fi
done | bash -x
echo ".gitignore files in empty directories created."
echo

echo "Creating main .gitignore file ..."
/bin/rm -f .gitignore
echo "config/database.yml" >> .gitignore
echo "db/*.sqlite3" >> .gitignore
echo "log/*.log" >> .gitignore
echo "log/*.pid" >> .gitignore
echo "tmp/**/*" >> .gitignore
echo "**/.DS_Store" >> .gitignore
echo "Created main .gitignore file."
echo


echo ".gitignore files created"
echo "=============================================================="
find . -name .gitignore
echo "=============================================================="
echo

echo "Content of ./.gitignore"
echo "=============================================================="
cat ./.gitignore
echo "=============================================================="
echo