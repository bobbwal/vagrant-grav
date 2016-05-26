# add path variable in vagrant user's .bashrc for installed libraries via composer
# allows running commands globally in shell for installed composer libraries

echo "PATH=$PATH:/usr/local/bin/vendor/bin/" >> /home/vagrant/.bashrc
