#!/usr/bin/sudo bash

echo "Installing the everyfile script in 10 seconds... Please press Ctrl+C to cancel."
sleep 10
mkdir /.everyfile
git clone https://github.com/Leon8326/everyfile.git /.everyfile/git
mkdir /.everyfile/bin
cp /.everyfile/git/everyfile.sh /.everyfile/bin/everyfile.sh
cd /.everyfile
rm -rf git
chmod -x /.everyfile/bin/everyfile.sh
mv /.everyfile/bin/everyfile.sh /.everyfile/bin/everyfile
echo >> ~/.bashrc
echo "/.everyfile/bin" >> ~/.bashrc
source ~/.bashrc
echo "Installation complete! Now you can use 'sudo everyfile' to search all across your computer"
