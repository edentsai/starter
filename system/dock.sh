#!/usr/bin/env bash

###############################################################################
# Dock                                                                        #
###############################################################################

# Icon size of Dock items
defaults write com.apple.dock tilesize -int 32

# Lock the Dock size
defaults write com.apple.dock size-immutable -bool true

# Dock magnification
defaults write com.apple.dock magnification -bool true

# Icon size of magnified Dock items
defaults write com.apple.dock largesize -int 36

# Minimization effect: 'genie', 'scale', 'suck'
defaults write com.apple.dock mineffect -string 'scale'

# Dock orientation: 'left', 'bottom', 'right'
defaults write com.apple.dock 'orientation' -string 'right'

# Dock pinning: 'start', 'middle', 'end'
defaults write com.apple.dock pinning -string 'start'

# Lock the Dock position
# defaults write com.apple.dock position-immutable -bool true

# Double-click a window's title bar to:
# None
# Mimimize
# Maximize (zoom)
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

# Minimize to application
defaults write com.apple.dock minimize-to-application -bool true

# Animate opening applications
defaults write com.apple.dock launchanim -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool false

# Auto-hide delay
defaults write com.apple.dock autohide-delay -float 0

# Auto-hide animation duration
# defaults write com.apple.dock autohide-time-modifier -float 0

# Spring loaded Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Highlight hover effect for the grid view of a stack
defaults write com.apple.dock mouse-over-hilite-stack -bool true

# Apple may use this preference to automatically add Launchpad to the Dock
defaults write com.apple.dock 'checked-for-launchpad' -bool true

# Remove all (default) app icons from the Dock
# defaults write com.apple.dock persistent-apps -array ''

# Lock the Dock contents
# defaults write com.apple.dock contents-immutable -bool true

# Show only open applications in Dock
# defaults write com.apple.dock static-only -bool true

# Add special items to the Dock
# Keys:
#   persistent-apps: left side of the Dock
#   persistent-others: right side of the Dock
# Values:
#   Spacer Tile : '{tile-data={}; tile-type="spacer-tile";}'
#   Recent/Favorite items stack: '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
# Add a spacer to the left of the Dock
defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'
defaults write com.apple.dock persistent-others -array-add '{ "tile-data" = { "list-type" = 1; }; "tile-type" = "recents-tile"; }'

# Display translucent Dock icons for hidden applications
# defaults write com.apple.dock showhidden -bool true
