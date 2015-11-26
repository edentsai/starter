#!/usr/bin/env bash

###############################################################################
# Mission Control                                                             #
###############################################################################

# Mission Control animation duration
defaults write com.apple.dock expose-animation-duration -float 0.1

# Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# When switching to an application, switch to a Space with open windows for the application
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true

# Group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool true

# Disaplays have sererate Spaces
defaults write com.apple.spaces spans-displays -bool true

# Disable the Launchpad gesture (pinch with thumb and three fingers)
#defaults write com.apple.dock showLaunchpadGestureEnabled -int 0

# Reset Launchpad
# find "${HOME}/Library/Application Support/Dock" -name "*-*.db" -maxdepth 1 -delete

# Add iOS Simulator to Launchpad
# if [ -e "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" ]; then
#     sudo ln -sf "/Applications/Xcode.app/Contents/Developer/Applications/Simulator.app" \
#                 "/Applications/Simulator.app"
# fi

# Hot corners
#  0 : NOP
#  2 : Mission Control
#  3 : Show application windows
#  4 : Desktop
#  5 : Start screen saver
#  6 : Disable screen saver
#  7 : Dashboard
# 10 : Put display to sleep
# 11 : Launchpad
# 12 : Notification Center

nullModifier=0
shiftModifier=131072
controlModifier=262144
controlShiftModifier=393216
optionModifier=524288
optionShiftModifier=655360
optionControlModifier=786432
optionControlShiftModifier=917504
commandModifier=1048576
commandShiftModifier=1179648
commandControlModifier=1310720
commandOptionModifier=1572864
commandOptionShiftModifier=1703936
commandOptionControlModifier=1835008
commandOptionControlShiftModifier=1966080
hotspotNull=1
hotspotMissionControl=2
hotspotApplicationWindows=3
hotspotDesktop=4
hotspotStartScreenSaver=5
hotspotDisableScreenSaver=6
hotspotDashboard=7
hotsoptPutDisplayToSleep=10
hotspotLaunchpad=11
hotspotNotificationCenter=12

# Top left screen corner
defaults write com.apple.dock wvous-tl-corner   -int $hotspotMissionControl
defaults write com.apple.dock wvous-tl-modifier -int $commandModifier
# Top right screen corner
defaults write com.apple.dock wvous-tr-corner   -int $hotspotNotificationCenter
defaults write com.apple.dock wvous-tr-modifier -int $commandModifier
# Bottom left screen corner
defaults write com.apple.dock wvous-bl-corner   -int $hotspotApplicationWindows
defaults write com.apple.dock wvous-bl-modifier -int $commandModifier
# Bottom right screen corner
defaults write com.apple.dock wvous-br-corner   -int $hotspotDesktop
defaults write com.apple.dock wvous-br-modifier -int $commandModifier
