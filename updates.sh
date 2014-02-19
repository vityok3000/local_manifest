#!/bin/bash
if [ -f ~/bin/paths-11.0.sh ]; then
        source ~/bin/paths-11.0.sh
fi
if [ "${android}" = "" ]; then
        android=~/android/system
fi

# gui: Allow devices to disable fence sync
cherries+=(52994)

# DisplayDevice: Backwards compatibility with old EGL
cherries+=(54257)

# Allow using classic webview
cherries+=(56054)

# Bringup : the classic WebView to the build.
cherries+=(56055)

${android}/build/tools/repopick.py -b ${cherries[@]}
