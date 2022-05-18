mkdir -p /src
git clone https://github.com/musescore/MuseScore.git

cd /src/MuseScore
cmake -P build.cmake -DCMAKE_BUILD_TYPE=Release
