# Prompt for password early on
sudo -v

# Install Homebrew (http://brew.sh)
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Update Homebrew
brew update

# Install oh-my-zsh to beautify and manage zsh
curl -L http://install.ohmyz.sh | sh

# install brew taps, needs to be fixed properly later
while read in; do brew tap "$in"; done < $(cat Taps|grep -v "#")

# Install brews
brew install $(cat Brewfile|grep -v "#")

# Install casks
brew cask install $(cat Caskfile|grep -v "#")

# Install pip packages
sudo pip install -r requirements.txt

# Set standard settings
source 'settings.sh'
source 'symlink-dotfiles.sh'

# Update OS X
sudo softwareupdate -i -a

# Set Google Chrome as the default browers. You'll be prompted to select the browser you'd prefer.
open -a "Google Chrome" --args --make-default-browser
