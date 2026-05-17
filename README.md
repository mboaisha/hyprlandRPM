A collection of Hyprland and related packages:

* **[hyprland](https://wiki.hyprland.org/)** – A highly customizable dynamic tiling Wayland compositor that doesn't sacrifice on its looks.
* **[xdg-desktop-portal-hyprland](https://wiki.hyprland.org/Useful-Utilities/Hyprland-desktop-portal/)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/xdg-desktop-portal-hyprland/xdg-desktop-portal-hyprland.spec) – xdg-desktop-portal backend for hyprland.
* **hyprland-git** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprland-git/hyprland-git.spec) – Hyprland git snapshots.
<!-- Hyprland plugins currently not being built, but support may be added in the future -->
<!-- * **[hyprland-plugins](https://github.com/hyprwm/hyprland-plugins)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprland-plugins/hyprland-plugins.spec) – Official [plugins](https://wiki.hyprland.org/Plugins/Using-Plugins/) for the hyprland package. (Installed in /usr/lib64/hyprland) -->
* **[hyprpaper](https://github.com/hyprwm/hyprpaper)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprpaper/hyprpaper.spec) – A blazing fast wayland [wallpaper](https://wiki.hyprland.org/hyprland-wiki/pages/Useful-Utilities/Wallpapers/) utility with IPC controls.
* **[hyprpicker](https://github.com/hyprwm/hyprpicker)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprpicker/hyprpaper.spec) – A wlroots-compatible Wayland color picker.
* **[hyprlauncher](https://github.com/hyprwm/hyprlauncher)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprlauncher/hyprlauncher.spec) - Multipurpose launcher for hyprland.
* **[hypridle](https://github.com/hyprwm/hypridle)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hypridle/hypridle.spec) - Hyprland's idle daemon.
* **[hyprlock](https://github.com/hyprwm/hyprlock)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprlock/hyprlock.spec) - Hyprland's GPU-accelerated screen locking utility.
* **[hyprsunset](https://github.com/hyprwm/hyprsunset)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprsunset/hyprsunset.spec) - An application to enable a blue-light filter on Hyprland.
* **[hyprpolkitagent](https://github.com/hyprwm/hyprpolkitagent)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprpolkitagent/hyprpolkitagent.spec) - A simple polkit authentication agent for Hyprland.
* **[hyprsysteminfo](https://github.com/hyprwm/hyprsysteminfo)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprsysteminfo/hyprsysteminfo.spec) - An application to display information about the running system.
* **[hyprqt6engine](https://github.com/hyprwm/hyprqt6engine)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprqt6engine/hyprqt6engine.spec) - Qt6 Theme Provider for Hyprland.
* **[hyprpwcenter](https://github.com/hyprwm/hyprpwcenter)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprpwcenter/hyprpwcenter.spec) - GUI Control Center for Pipewire.
* **[hyprshutdown](https://github.com/hyprwm/hyprshutdown)** [(spec)](https://github.com/wayblueorg/hyprlandRPM/blob/master/hyprshutdown/hyprshutdown.spec) - Graceful Shutdown Utility for Hyprland.

Special thanks to solopasha, who originally created these specs, and LionHeartP who updated solopasha's scripts for fedora 44.

## Update Schedule

For the sanity of the maintainers, given the fast-paced nature of hyprland development, the master branch is updated to the latest versions of each package every other Saturday. The prerelease-track branch will contain newer packages, but will not be tested; use at your own risk.

- `master` copr: https://https://copr.fedorainfracloud.org/coprs/craftidore/wayblueorg-hyprland/
- `prerelease-track` copr: https://copr.fedorainfracloud.org/coprs/craftidore/hyprland-prerelease-track/

