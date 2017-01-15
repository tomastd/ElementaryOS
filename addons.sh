#!/bin/bash

# Clear the Terminal
clear

# Zenity
GUI=$(zenity --list --checklist \
	--height 500 \
	--width 1000 \
	--title="elementary-script" \
	--text "Pick one or multiple Actions to execute." \
	--column=Picks \
	--column=Actions \
	--column=Type \
	--column=Description \
	TRUE "Update System" "APT" "Updates the package lists, the system packages and Applications."  \
    	FALSE "Upgrade LTS Kernel" "DEB" "Upgrade to the last Long Term Suport LTS Kernel." \
	FALSE "Enable PPAs" "APT" "Another extra layer of security and another level of annoyance. You cannot add PPA by default in Loki." \
	FALSE "Install Y-PPA-Manager" "PPA" "Tool that lets you easily add, remove or purge PPAs as well as search for packages in Launchpad PPAs." \
	FALSE "Install Elementary Tweaks" "PPA" "Installing themes in elementary OS is a much easier task thanks to elementary Tweaks tool." \
    	FALSE "Install Elementary Full Icon Theme" "GIT" "Installs Elementary Full Icon Theme. A mega pack of icons for elementary OS." \
    	FALSE "Add Oibaf Repository" "PPA" "This repository contain updated and optimized open graphics drivers." \
	FALSE "Install Gufw Firewall" "APT" "Gufw is an easy and intuitive way to manage your linux firewall." \
	FALSE "Install CatFish" "APT" "handy file searching tool for Linux and UNIX." \
	FALSE "Install Support for Archive Formats" "APT" "Installs support for archive formats." \
	FALSE "Install GDebi" "APT" "Installs GDebi. A simple tool to install deb files." \
    	FALSE "Install Gnome Software Center" "APT" "Installs Gnome Software Center with more options than Elementarys' AppCenter has." \
	FALSE "Install Google Chrome" "DEB" "Installs Google Chrome 64bits. A browser that combines a minimal design with sophisticated technology to make the web faster, safer, and easier." \
	FALSE "Install Chromium" "APT" "Installs Chromium. An open-source browser project that aims to build a safer, faster, and more stable way for all Internet users to experience the web." \
	FALSE "Install Firefox" "APT" "Installs Firefox. A free and open-source web browser." \
	FALSE "Install Skype" "DEB" "Video chat, make international calls, instant message and more with Skype." \
	FALSE "Install Dropbox" "GIT" "Installs Dropbox with wingpanel support. Dropbox is a free service that lets you bring your photos, docs, and videos anywhere and share them easily." \
	FALSE "Install Nextcloud Client" "PPA" "Desktop client for Nextcloud. A safe home for all your data Access, share and protect your files, calendars, contacts, communication & more at home and in your enterprise." \
	FALSE "Install Liferea" "APT" "Installs Liferea. a web feed reader/news aggregator that brings together all of the content from your favorite subscriptions into a simple interface that makes it easy to organize and browse feeds. Its GUI is similar to a desktop mail/newsclient, with an embedded graphical browser." \
	FALSE "Install VLC" "APT" "Installs VLC. A free and open source cross-platform multimedia player and framework that plays most multimedia files as well as DVDs, Audio CDs, VCDs, and various streaming protocols." \
	FALSE "Install Clementine Music Player" "PPA" "Installs Clementine. One of the Best Music Players and library organizer on Linux." \
	FALSE "Install Spotify Client" "PPA" "Installs Spotify Client. Music streaming service provider." \
	FALSE "Install Gimp" "APT" "GIMP is an advanced picture editor. You can use it to edit, enhance, and retouch photos and scans, create drawings, and make your own images." \
	FALSE "Install Deluge" "APT" "Deluge is a lightweight, Free Software, cross-platform BitTorrent client." \
	FALSE "Install Transmission" "APT" "Installs the Transmission BitTorrent client." \
	FALSE "Install Atom" "PPA" "Installs Atom. A hackable text editor for the 21st Century." \
	FALSE "Install Sublime Text 3" "PPA" "Installs Sublime Text 3. A sophisticated text editor for code, markup and prose." \
	FALSE "Install LibreOffice" "PPA" "Installs LibreOffice. A powerful office suite." \
	FALSE "Install TLP" "APT" "Install TLP to save battery and prevent overheating." \
	FALSE "Install Redshift" "APT" "Use night shift to save your eyes." \
	FALSE "Install Disk Utility" "APT" "Gnome Disk Utility is a tool to manage disk drives and media." \
	FALSE "Install Ubuntu Restricted Extras" "APT" "Installs commonly used applications with restricted copyright (mp3, avi, mpeg, TrueType, Java, Flash, Codecs)." \
	FALSE "Install Support for Encrypted DVD's" "APT" "Installs support for playing encrypted DVD's." \
	FALSE "Install Extra Multimedia Codecs" "APT" "Installs extra multimedia codecs." \
	TRUE "Fix Broken Packages" "APT" "Fixes the broken packages." \
	TRUE "Clean-Up Junk" "APT" "Removes unnecessary packages and the local repository of retrieved package files." \
	--separator=', ');

# Update System Action
if [[ $GUI == *"Update System"* ]]
then
	clear
	echo "Updating system..."
	echo ""
	sudo apt -y update
	sudo apt -y full-upgrade
fi

# Install WPS Office
if [[ $GUI == *"Upgrade LTS Kernel"* ]]
then
	clear
	echo "Upgrading LTS Kernel..."
	echo ""
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/linux-headers-4.4.39-040439_4.4.39-040439.201612151346_all.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.4.39/linux-headers-4.4.39-040439_4.4.39-040439.201612151346_all.deb
		wget -O /tmp/linux-headers-4.4.39-040439-generic_4.4.39-040439.201612151346_i386.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.4.39/linux-headers-4.4.39-040439-generic_4.4.39-040439.201612151346_i386.deb
		wget -O /tmp/linux-image-4.4.39-040439-generic_4.4.39-040439.201612151346_i386.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.4.39/linux-image-4.4.39-040439-generic_4.4.39-040439.201612151346_i386.deb
		sudo dpkg -i /tmp/linux*4.4.39*.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/linux-headers-4.4.39-040439_4.4.39-040439.201612151346_all.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.4.39/linux-headers-4.4.39-040439_4.4.39-040439.201612151346_all.deb
		wget -O /tmp/linux-headers-4.4.39-040439-generic_4.4.39-040439.201612151346_amd64.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.4.39/linux-headers-4.4.39-040439-generic_4.4.39-040439.201612151346_amd64.deb
		wget -O /tmp/linux-image-4.4.39-040439-generic_4.4.39-040439.201612151346_amd64.deb http://kernel.ubuntu.com/~kernel-ppa/mainline/v4.4.39/linux-image-4.4.39-040439-generic_4.4.39-040439.201612151346_amd64.deb
		sudo dpkg -i /tmp/linux*4.4.39*.deb
	fi
	sudo update-grub
	sudo rm -f /tmp/linux*4.4.39*.deb
fi

# Enable PPAs
if [[ $GUI == *"Enable PPAs"* ]]
then
	clear
	echo "Enabling PPAs..."
	echo ""
	sudo apt -y install software-properties-common
fi

# Install Y-PPA-Manager
if [[ $GUI == *"Y-PPA-Manager"* ]]
then
	clear
	sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
	sudo apt update
	sudo apt -y install y-ppa-manager
fi

# Install Elementary Tweaks Action
if [[ $GUI == *"Install Elementary Tweaks"* ]]
then
	clear
	echo "Installing Elementary Tweaks..."
	echo ""
	sudo add-apt-repository -y ppa:philip.scott/elementary-tweaks
	sudo apt update
	sudo apt -y install elementary-tweaks
fi

# Install  Elementary Full Icon Theme
if [[ $GUI == *"Install Elementary Full Icon Theme"* ]]
then
	clear
	echo "Installing Elementary Full Icon Theme..."
	echo ""
	sudo apt -y install git
	git clone https://github.com/btd1337/elementary-full-icon-theme
	sudo mv elementary-full-icon-theme /usr/share/icons/
	gsettings set org.gnome.desktop.interface icon-theme "elementary-full-icon-theme"
	rm -rf elementary-full-icon-theme

fi

# Add Oibaf Repository
if [[ $GUI == *"Add Oibaf Repository"* ]]
then
	clear
	echo "Adding Oibaf Repository and updating..."
	echo ""
	sudo add-apt-repository -y ppa:oibaf/graphics-drivers
	sudo apt update
	sudo apt -y full-upgrade
fi

# Install Gufw Firewall Action
if [[ $GUI == *"Install Gufw Firewall"* ]]
then
	clear
	echo "Installing Gufw Firewall..."
	echo ""
	sudo apt -y install gufw
fi

# Install CatFish
if [[ $GUI == *"Install CatFish"* ]]
then
	clear
	echo "Installing catfish..."
	echo ""
	sudo apt -y install catfish
fi

# Install Support for Archive Formats Action
if [[ $GUI == *"Install Support for Archive Formats"* ]]
then
	clear
	echo "Installing Support for Archive Formats"
	echo ""
	sudo apt -y install zip unzip p7zip p7zip-rar rar unrar
fi

# Install GDebi Action
if [[ $GUI == *"Install GDebi"* ]]
then
	clear
	echo "Installing GDebi..."
	echo ""
	sudo apt -y install gdebi
fi

# Install Gnome Software Center
if [[ $GUI == *"Install Gnome Software Center"* ]]
then
	clear
	echo "Installing Gnome Software Center..."
	echo ""
	sudo apt -y install gnome-software
fi

# Install Google Chrome Action
if [[ $GUI == *"Install Google Chrome"* ]]
then
	clear
	echo "Installing Google Chrome..."
	echo ""
	wget -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
fi

# Install Chromium
if [[ $GUI == *"Install Chromium"* ]]
then
	clear
	echo "Installing Chromium..."
	echo ""
	sudo apt -y install chromium-browser
fi

# Install Firefox Action
if [[ $GUI == *"Install Firefox"* ]]
then
	clear
	echo "Installing Firefox..."
	echo ""
	sudo apt -y install firefox
fi

# Install Skype Action
if [[ $GUI == *"Install Skype"* ]]
then
	clear
	echo "Installing Skype..."
	echo ""
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/skype.deb https://download.skype.com/linux/skype-ubuntu-precise_4.3.0.37-1_i386.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/skype.deb https://go.skype.com/skypeforlinux-64-alpha.deb
	fi
	sudo dpkg -i /tmp/skype.deb
	sudo apt -f install
fi

# Install Dropbox Action
if [[ $GUI == *"Install Dropbox"* ]]
then
	clear
	echo "Installing Drobox..."
	echo ""
	sudo apt -y install git
	sudo apt --purge remove -y dropbox*
	sudo apt -y install python-gpgme	
	git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
	sudo bash /tmp/elementary-dropbox/install.sh
fi

# Install Nextcloud Client
if [[ $GUI == *"Install Nextcloud Client"* ]]
then
	clear
	echo "Installing Nextcloud client..."
	echo ""
	sudo add-apt-repository -y ppa:ivaradi/nextcloud-client-ppa
	sudo apt -y update
	sudo apt -y install nextcloud-client
fi

# Install Liferea Action
if [[ $GUI == *"Install Liferea"* ]]
then
	clear
	echo "Installing Liferea..."
	echo ""
	sudo apt -y install liferea
fi

# Install VLC Action
if [[ $GUI == *"Install VLC"* ]]
then
	clear
	echo "Installing VLC..."
	echo ""
	sudo apt -y install vlc
fi

# Install Clementine Action
if [[ $GUI == *"Install Clementine Music Player"* ]]
then
	clear
	sudo add-apt-repository -y ppa:me-davidsansome/clementine
	sudo apt -y update
	echo "Installing Clementine Music Player..."
	echo ""
	sudo apt -y install clementine
fi

# Install Spotify Client
if [[ $GUI == *"Install Spotify Client"* ]]
then
	clear
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt -y update
sudo apt -y install spotify-client
fi

# Install Gimp Action
if [[ $GUI == *"Install Gimp"* ]]
then
	clear
	echo "Installing Gimp Image Editor..."
	echo ""
	sudo apt -y install gimp
fi

# Install Deluge Action
if [[ $GUI == *"Install Deluge"* ]]
then
	clear
	echo "Installing Deluge..."
	echo ""
	sudo apt -y install deluge
fi

# Install Transmission Action
if [[ $GUI == *"Install Transmission"* ]]
then
	clear
	echo "Installing Transmission..."
	echo ""
	sudo apt -y install transmission
fi

# Install Atom Action
if [[ $GUI == *"Install Atom"* ]]
then
	clear
	echo "Installing Atom..."
	echo ""
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt -y update
	sudo apt -y install atom
fi

# Install Sublime Text 3 Action
if [[ $GUI == *"Install Sublime Text 3"* ]]
then
	clear
	echo "Installing Sublime Text 3..."
	echo ""
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt -y update
	sudo apt -y install sublime-text-installer
fi

# Install LibreOffice Action
if [[ $GUI == *"Install LibreOffice"* ]]
then
	clear
	echo "Installing LibreOffice..."
	echo ""
    sudo add-apt-repository -y ppa:libreoffice/ppa
	sudo apt -y update
	sudo apt -y install libreoffice libreoffice-style-breeze
fi

# Install TLP
if [[ $GUI == *"Install TLP"* ]]
then
	echo "Installing TLP..."
	echo ""
	sudo apt --purge remove -y laptop-mode-tools	#Avoid conflict with TLP
	sudo apt -y install tlp tlp-rdw
fi

# Install Redshift Action
if [[ $GUI == *"Install Redshift"* ]]
then
	clear
	echo "Installing Redshift..."
	echo ""
	sudo apt -y install redshift-gtk
fi

# Install Gnome Disk Utility Action
if [[ $GUI == *"Install Disk Utility"* ]]
then
	clear
	echo "Installing Gnome Disk Utility..."
	echo ""
	sudo apt -y install gnome-disk-utility
fi

# Install Ubuntu Restricted Extras Action
if [[ $GUI == *"Install Ubuntu Restricted Extras"* ]]
then
	clear
	echo "Installing Ubuntu Restricted Extras..."
	echo ""
	sudo apt -y install ubuntu-restricted-extras
fi

# Install Support for Encrypted DVD's Action
if [[ $GUI == *"Install Support for Encrypted DVD's"* ]]
then
	clear
	echo "Installing Support for Encrypted DVD's..."
	echo ""
	sudo apt -y install libdvdread4 libdvdcss2
	sudo dpkg-reconfigure libdvd-pkg
fi

# Install Extra Multimedia Codecs Action
if [[ $GUI == *"Install Extra Multimedia Codecs"* ]]
then
	clear
	echo "Installing Extra Multimedia Codecs..."
	echo ""
	sudo apt -y install libavcodec-extra-53
fi

# Fix Broken Packages Action
if [[ $GUI == *"Fix Broken Packages"* ]]
then
	clear
	echo "Fixing the broken packages..."
	echo ""
	sudo apt -y -f install
fi

# Clean-Up Junk Action
if [[ $GUI == *"Clean-Up Junk"* ]]
then
	clear
	echo "Cleaning-up junk..."
	echo ""
	sudo apt -y autoremove
	sudo apt -y autoclean
fi


# Notification
# clear
notify-send -i utilities-terminal elementary-script "All elemetary-script tasks done!"
