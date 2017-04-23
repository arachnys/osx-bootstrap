dir="$HOME/src/hazzadous/"
mkdir -p $dir
cd $dir
git clone --recursive https://github.com/hazzadous/osx-bootstrap.git
cd osx-bootstrap
bash bootstrap.sh
