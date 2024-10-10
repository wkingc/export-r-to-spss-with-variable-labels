# These are the commands I used to install pspp from source on Ubuntu 20.04 LTS

sudo apt install gettext
sudo apt install appstream
sudo apt install libcairo2-dev
sudo apt install libpango1.0-dev
sudo apt install libgtk-3-dev
sudo apt install libgtksourceview-3.0-dev
sudo apt install libgsl-dev

sudo wget http://alpha.gnu.org/gnu/ssw/spread-sheet-widget-0.6.tar.gz
tar -xzf spread-sheet-widget-0.6.tar.gz
cd spread-sheet-widget-0.6/
./configure
make
sudo make install

cd ..

sudo wget https://gnu.mirror.constant.com/pspp/pspp-1.4.1.tar.gz
tar -xzf pspp-1.4.1.tar.gz
cd pspp-1.4.1
./configure
make
sudo make install

export LD_LIBRARY_PATH=/usr/local/lib