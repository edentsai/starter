#!/usr/bin/env bash

###############################################################################
# General                                                                     #
###############################################################################

# Set appearance
# Blue     : 1
# Graphite : 6
# defaults write NSGlobalDomain AppleAquaColorVariant -int 1

# Highlight color
# Graphite : `0.780400 0.815700 0.858800`
# Silver   : `0.776500 0.776500 0.776500`
# Blue     : `0.709800 0.835300 1.000000`
# defaults write NSGlobalDomain AppleHighlightColor -string '0.780400 0.815700 0.858800'

# Use Dark menu bar and Dock
# defaults write NSGlobalDomain AppleInterfaceStyle -string "Dark"

# Disable automatically hide and show the menu bar
defaults write NSGlobalDomain "_HIHideMenuBar" -bool false

# Sidebar icon size
# Small  : 1
# Medium : 2
# Large  : 3
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Scroll bar visibility
# Possible values: `WhenScrolling`, `Automatic` and `Always`
defaults write NSGlobalDomain AppleShowScrollBars -string "Automatic"

# Smooth scrolling
# Disable on older Macs
#defaults write NSGlobalDomain NSScrollAnimationEnabled -bool false

# Close windows when quitting an application
#defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# Set number of recent items (Applications, Document, Servers)
# PlistBuddy approach appears broken:
# RecentApplications, RecentDocuments, RecentServers
#/usr/libexec/PlistBuddy -x -c "Set :RecentApplications:MaxAmount 0" ~/Library/Preferences/com.apple.recentitems.plist
# for category in 'applications' 'documents' 'servers'; do
#    /usr/bin/osascript -e "tell application \"System Events\" to tell appearance preferences to set recent $category limit to 15"
# done
