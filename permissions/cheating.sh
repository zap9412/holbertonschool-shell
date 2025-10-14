echo -e "#!/bin/bash\nif [ \"\$(stat -c %U hello)\" = \"guillaume\" ]; then\n    sudo chown vincent hello\nfi" > 16-if_only
chmod u+x 16-if_only
cp 16-if_only /tmp/
cd /tmp
chmod u+x 16-if_only
sudo ./16-if_only
ls -l hello
git add 16-if_only
git commit -m "Creation of 16-if_only"
git push origin main
