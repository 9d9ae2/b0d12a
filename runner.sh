# /bin/bash
sudo apt update
sudo apt install python3 python3-dev build-essential libasound2-dev
wget https://github.com/DiscordPhone/pjproject/archive/py37.zip
unzip py37.zip && cd pjproject-py37
chmod +x configure aconfigure
./configure CXXFLAGS=-fPIC CFLAGS=-fPIC LDFLAGS=-fPIC CPPFLAGS=-fPIC
make dep
make
sudo make install
cd pjsip-apps/src/python
python3 setup.py build
sudo python3 setup.py install
cd ~
git clone https://github.com/DiscordPhone/softphone
python3 -m pip install -e softphone
pip install aiohttp==3.7.4 async-timeout==3.0.1 attrs==19.3.0 cffi==1.14.0 chardet==3.0.4 idna==2.10 idna-ssl==1.1.0 multidict==4.7.6 testresources==2.0.1 pycparser==2.20 PyNaCl==1.4.0 python-dotenv==0.14.0 six==1.15.0 sounddevice==0.3.15 typing-extensions==3.7.4.3 websockets==9.1 yarl==1.4.2
