#!/usr/bin/sudo bash
echo "Installing the everyfile script in 10 seconds... Please press Ctrl+C to cancel."
sleep 10
mkdir /.everyfile
git clone https://github.com/Leon8326/everyfile /.everyfile/git
cd /.everyfile/git
mkdir /.everyfile/bin
cp everyfile.sh /.everyfile/bin/everyfile.sh
cd /.everyfile
rm -rf git
cd bin
chmod -x everyfile.sh
mv everyfile.sh everyfile
echo >> ~/.bashrc
echo "/.everyfile/bin" >> ~/.bashrc
echo "Installation complete! Now you can use 'sudo everyfile' to search all across your computer"
exit
