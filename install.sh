dir="$HOME/src/arachnys/"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/jonasrosland/osx-bootstrap.git
cd osx-bootstrap
bash bootstrap.sh
