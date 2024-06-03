PORTNAME=gala
DISTVERSION=7.1.3
CATEGORIES=x11-wm

DISTDIR=${PWD}
# DIST_SUBDIR=distsrc

MAINTAINER=inucat@proton.me
COMMENT=Unofficial port of Gala window manager developed by elementary OS team
WWW=https://github.com/elementary/gala

LICENSE=GPLv3

USE_GITHUB=yes
GH_ACCOUNT=elementary

BUILD_DEPENDS=\
		meson:devel/meson \
		valac:lang/vala \
		gettext:devel/gettext-tools \
		glib-compile-resources:devel/glib20 \
		#pkgconf

#RUN_DEPENDS=\
#		gnome-settings-daemon:

LIB_DEPENDS=\
		libcanberra.so:audio/libcanberra \
		libclutter-1.0.so:graphics/clutter \
		libgee-0.8.so:devel/libgee \
		libgexiv2.so:graphics/gexiv2 \
		libgio-2.0.so:devel/glib20 \
		libglib-2.0.so:devel/glib20 \
		libgmodule-2.0.so:devel/glib20 \
		libgnome-desktop-3.so:x11/gnome-desktop \
		libgobject-2.0.so:devel/glib20 \
		libgranite.so:x11-toolkits/granite \
		libgtk-3.so:x11-toolkits/gtk30 \
		libmutter-10.so:x11-wm/mutter \
		#gnome-settings-daemon-42/libgsd.so:sysutils/gnome-settings-daemon \

# Dependency gio-unix-2.0 found: YES 2.80.2 (cached)
# Dependency gdk-x11-3.0 found: YES 3.24.42 (cached)

do-build:
	cd ${WRKSRC} && meson setup build --prefix=/usr/local
	cd ${WRKSRC}/build && ninja

do-install:
	cd ${WRKSRC}/build && ninja install

.include <bsd.port.mk>
