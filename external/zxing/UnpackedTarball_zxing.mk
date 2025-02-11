#-*- Mode: makefile-gmake; tab-width: 4; indent-tabs-mode: t -*-
#
# This file is part of the LibreOffice project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

$(eval $(call gb_UnpackedTarball_UnpackedTarball,zxing))

$(eval $(call gb_UnpackedTarball_set_tarball,zxing,$(ZXING_TARBALL)))

$(eval $(call gb_UnpackedTarball_set_patchlevel,zxing,1))

# patch 0001-android-Fix-build-with-NDK-26.patch is backport of
# upstream commit https://github.com/zxing-cpp/zxing-cpp/commit/295b193b0105e68bb24747aefbff2653df892b4c
$(eval $(call gb_UnpackedTarball_add_patches,zxing, \
	external/zxing/0001-android-Fix-build-with-NDK-26.patch \
))

# vim: set noet sw=4 ts=4:
