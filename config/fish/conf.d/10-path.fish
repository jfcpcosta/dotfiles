fish_add_path ~/.local/bin
fish_add_path ~/bin
fish_add_path /opt/homebrew/bin
fish_add_path ~/.cargo/bin

# Android SDK
set -gx ANDROID_HOME $HOME/Library/Android/sdk
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin