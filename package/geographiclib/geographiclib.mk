################################################################################
#
# GeographicLib
#
################################################################################

GEOGRAPHICLIB_VERSION = 1.49
GEOGRAPHICLIB_SOURCE = GeographicLib-$(GEOGRAPHICLIB_VERSION).tar.gz
GEOGRAPHICLIB_SITE = https://sourceforge.net/projects/geographiclib/files/distrib
GEOGRAPHICLIB_INSTALL_STAGING = YES
GEOGRAPHICLIB_INSTALL_TARGET = YES
#LIBFOO_CONF_OPTS = -DBUILD_DEMOS=ON
#LIBFOO_DEPENDENCIES = libglib2 host-pkgconf

$(eval $(cmake-package))
