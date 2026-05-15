.PHONY: prepare srpm
specfile = $(notdir $(spec))

prepare:
	dnf install --nodocs -y rpm-build rpmdevtools

# hyprland-plugins-git.spec:
# 	sed -e '/%global build_for/s/release/git/' hyprland-plugins.spec > $(specfile)

hyprland%spec:
	sed -e "/Name:/s/hyprland-git/$(basename $(specfile))/" hyprland-git.spec > $(specfile)
    ifneq ($(findstring git,$(specfile)),git)
		sed 's/%global bumpver/#%&/' -i $(specfile)
    endif

srpm: prepare $(specfile)
	spectool -g ./$(specfile)
	rpmbuild -bs --define "_sourcedir ${PWD}" --define "_specdir ${PWD}" \
		--define "_builddir ${PWD}" --define "_srcrpmdir $(outdir)" --define \
		"_rpmdir ${PWD}" --define "_buildrootdir ${PWD}/.build" $(specfile)
