# Android
export ANDROID_HOME="/Users/rsladek/Library/Android/sdk"
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
source "/Users/rsladek/.sdkman/bin/sdkman-init.sh"

#gradle-auto completion
# source ~/gradle-tab-completion.bash
alias killtests="adb shell am force-stop com.autoscout24.debug"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/rsladek/.sdkman"
[[ -s "/Users/rsladek/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/rsladek/.sdkman/bin/sdkman-init.sh"
