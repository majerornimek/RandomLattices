!#bin/bash

#sudo apt-get update
#sudo apt-get install gcc build-essential g++ cpp cmake mpi m4 mpich ui-auto git vim -y

#sudo yum install gcc build-essential g++ cpp cmake mpi m4 mpich mprf devtools -y
#sudo yum install centos-release-scl -y
#sudo yum install glibc-static libstdc++-static -y
#sudo yum-config-manager --enable rhel-server-rhscl-7-rpms -y
#sudo yum install devtoolset-7 -y
#scl enable devtoolset-7 bash



sudo apt-get update
sudo apt-get install gcc build-essential g++ cpp cmake mpi m4 mpich ui-auto git vim -y

wget https://gmplib.org/download/gmp/gmp-6.1.2.tar.bz2
tar -xvf gmp-*.tar*
cd gmp-6.1.2
./configure 
make -j 4 
make check
sudo make install
cd ..
rm gmp*.tar*


wget https://www.mpfr.org/mpfr-current/mpfr-4.0.2.tar.bz2
tar -xvf mpfr*
cd mpfr-4.0.2
./configure
make -j 612345674
make check
sudo make install
cd ..
rm mprf-4.0.2.tar.bz2

git clone https://github.com/fplll/fplll
cd fplll
./autogen.sh
./configure
make -j 64
sudo make install
cd ..

echo export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib >> .bashrc


git clone https://github.com/majerornimek/RandomLattices
git clone https://github.com/majerornimek/LatticeSieving
cd LatticeSieving
cd FPLLL_SAMPLER
mkdir bin opt
make






wget http://www.shoup.net/ntl/ntl-10.5.0.tar.gz
tar -xvf ntl*
cd ntl*/src
./configure NTL_GMP_LIP=on NTL_THREADS=on "CXXFLAGS=-g -O2 -std=c++11 -pthread -march=native" NTL_THREAD_BOOST=on NTL_STD_CXX11=on SHARED=on PREFIX=$(DEF_PREFIX)
make -j 4
sudo make install
cd ../..
rm ntl*.tar*

#wget https://github.com/shaih/HElib/archive/master.zip
#unzip master*
#cd HElib*/src
#make
#make check
#cd ../..
#rm master*

#wget http://www.mpfr.org/mpfr-current/mpfr-3.1.5.tar.gz
#tar -xvf mpfr*
#cd mpfr*
#./configure
#make
#make check
#make install
#cd ..
#rm mpfr*.tar*

#wget https://github.com/quarkslab/NFLlib/archive/master.zip
#unzip master.zip
#cd NFLlib*
#mkdir _build
#cd _build
#cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=$HOME/nfllib -DNFL_OPTIMIZED=ON
#make
#make test
#make install
#cd ../..
#rm master*

#wget https://github.com/CryptoExperts/FV-NFLlib/archive/master.zip
#unzip master.zip
#rm master.zip



