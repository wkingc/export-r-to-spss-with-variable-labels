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

cd ..

sudo rm -r spread-sheet-widget-0.6
sudo rm -r spread-sheet-widget-0.6.tar.gz
sudo rm -r pspp-1.4.1
sudo rm -r pspp-1.4.1.tar.gz

# #############
# # Install R #
# #############
# # update indices
# sudo apt update -qq
# # install two helper packages we need
# sudo apt install --no-install-recommends software-properties-common dirmngr
# # add the signing key (by Michael Rutter) for these repos
# # To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# # Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9
# wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# # add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed
# sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"

# sudo apt install --no-install-recommends r-base-dev

# ###################
# # Install Pandocc #
# ###################
# sudo apt install pandoc
# sudo apt install pandoc-citeproc