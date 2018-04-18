################################################################################
#
# GDAL
#
################################################################################

GDAL_VERSION = 2.2.4
GDAL_SOURCE = gdal-$(GDAL_VERSION).tar.xz
GDAL_SITE = http://download.osgeo.org/gdal/$(GDAL_VERSION)
GDAL_INSTALL_STAGING = YES
GDAL_INSTALL_TARGET = YES
# recommended flags from the OE build, but using system-provided
# dependencies for libz, png, jpeg, tiff. See:
# http://trac.osgeo.org/gdal/wiki/OpenEmbedded
GDAL_CONF_OPTS = --without-perl \
		 --without-python \
		 --without-php \
		 --without-ruby \
		 --without-curl \
		 --without-expat
GDAL_DEPENDENCIES = jpeg libpng tiff zlib

$(eval $(autotools-package))
