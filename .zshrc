export ZSH="$HOME/.oh-my-zsh"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT/emulator:$ANDROID_SDK_ROOT/platform-tools:"/usr/local/opt/libpq/bin:$PATH"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"

. /usr/local/opt/asdf/libexec/asdf.sh

ZSH_THEME="af-magic"
plugins=(git)

source $ZSH/oh-my-zsh.sh
export PATH="/usr/local/opt/curl/bin:$PATH"
