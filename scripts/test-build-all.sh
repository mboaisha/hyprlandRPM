#!/usr/bin/bash

SCRIPTDIR="$(dirname "$0")"

set -eou pipefail

pushd "$SCRIPTDIR"/../

# Dunno if I need to clean ~/rpmbuild/RPMS/{noarch/,x86_64/} out too yet
sudo dnf remove hyprland-protocols-devel hyprutils hyprgraphics hyprlang hyprtoolkit hyprgraphics-devel hyprwire hyprwire-devel hyprtoolkit-devel hyprlang-devel hyprutils-devel hyprwayland-scanner-devel hyprcursor hyprcursor-devel aquamarine glaze-devel -y

# Phase 1
"$SCRIPTDIR"/test-build.sh glaze glaze.spec
"$SCRIPTDIR"/test-build.sh hyprutils hyprutils.spec
"$SCRIPTDIR"/test-build.sh hyprwayland-scanner hyprwayland-scanner.spec
"$SCRIPTDIR"/test-build.sh hyprland-protocols hyprland-protocols.spec
createrepo_c ~/rpmbuild/RPMS/x86_64/
createrepo_c ~/rpmbuild/RPMS/noarch/
# Phase 2
"$SCRIPTDIR"/test-build.sh aquamarine aquamarine.spec
"$SCRIPTDIR"/test-build.sh hyprgraphics hyprgraphics.spec
"$SCRIPTDIR"/test-build.sh hyprlang hyprlang.spec
"$SCRIPTDIR"/test-build.sh hyprwire hyprwire.spec
"$SCRIPTDIR"/test-build.sh hyprpicker hyprpicker.spec
"$SCRIPTDIR"/test-build.sh hyprpolkitagent hyprpolkitagent.spec
createrepo_c ~/rpmbuild/RPMS/x86_64/
createrepo_c ~/rpmbuild/RPMS/noarch/
# Phase 3
"$SCRIPTDIR"/test-build.sh hyprtoolkit hyprtoolkit.spec
"$SCRIPTDIR"/test-build.sh hyprcursor hyprcursor.spec
"$SCRIPTDIR"/test-build.sh xdg-desktop-portal-hyprland xdg-desktop-portal-hyprland.spec
"$SCRIPTDIR"/test-build.sh hyprlock hyprlock.spec
"$SCRIPTDIR"/test-build.sh hypridle hypridle.spec
"$SCRIPTDIR"/test-build.sh hyprsunset hyprsunset.spec
"$SCRIPTDIR"/test-build.sh hyprland-qt-support hyprland-qt-support.spec
"$SCRIPTDIR"/test-build.sh hyprqt6engine hyprqt6engine.spec
createrepo_c ~/rpmbuild/RPMS/x86_64/
createrepo_c ~/rpmbuild/RPMS/noarch/
# Phase 4
# ./test-build.sh hyprland-git hyprland-git.spec
"$SCRIPTDIR"/test-build.sh hyprpaper hyprpaper.spec
"$SCRIPTDIR"/test-build.sh hyprland-guiutils hyprland-guiutils.spec
"$SCRIPTDIR"/test-build.sh hyprlauncher hyprlauncher.spec
"$SCRIPTDIR"/test-build.sh hyprsysteminfo hyprsysteminfo.spec
"$SCRIPTDIR"/test-build.sh hyprpwcenter hyprpwcenter.spec
"$SCRIPTDIR"/test-build.sh hyprshutdown hyprshutdown.spec
createrepo_c ~/rpmbuild/RPMS/x86_64/
createrepo_c ~/rpmbuild/RPMS/noarch/
