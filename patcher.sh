ANDROID=${PWD}

# Fix Compilation Issue #1
cd ${ANDROID}/hardware/libhardware_legacy
git fetch https://github.com/TamsuiCM11/android_hardware_libhardware_legacy refs/heads/stable/cm-11.0 && git cherry-pick 922d0c8ce846517fec01f129f2450d708c764220

# Fix Compilation Issue #2
cd ${ANDROID}/system/core
git fetch https://github.com/TamsuiCM11/android_system_core refs/heads/stable/cm-11.0 && git cherry-pick 5b874ab6cbdf39ff69bbb3d55bace8091d71dc1^..50ad89e1d280b38278d4c84ad9e980d15dccb919

# Backward Compatibility with recovery
cd ${ANDROID}/build
git fetch http://review.cyanogenmod.org/CyanogenMod/android_build refs/changes/59/53559/6 && git cherry-pick FETCH_HEAD
