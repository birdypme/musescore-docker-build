mkdir -p /src
git clone https://github.com/qt/qt5
cd /src/qt5

git checkout 5.15
./init-repository
./configure -prefix $PWD/qtbase -nomake tests -nomake examples -opensource -confirm-license
make -j $(nproc)
