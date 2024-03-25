#!/bin/bash
# osx settings
#

#
# Finder
#

# Allow quitting via ⌘ + Q; doing so will also hide desktop icons
defaults write com.apple.finder QuitMenuItem -bool true

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles -bool true

# Show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Show path bar
defaults write com.apple.finder ShowPathbar -bool true

# Allow text selection in Quick Look
defaults write com.apple.finder QLEnableTextSelection -bool true

#
# Mail
#

# disable inline attachements in OSX Mail app
defaults write com.apple.mail DisableInlineAttachmentViewing -bool yes

killall Finder