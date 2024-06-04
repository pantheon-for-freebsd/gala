
PORTNAME=	gala
DISTVERSION=	7.1.3
CATEGORIES=	x11-wm

MAINTAINER=	inucat@proton.me
COMMENT=	Unofficial port of Gala window manager developed by elementary OS team
WWW=	https://github.com/elementary/gala

LICENSE=	GPLv3

BUILD_DEPENDS=\
		update-desktop-database:devel/desktop-file-utils \
		#

LIB_DEPENDS=\
		libcanberra.so:audio/libcanberra \
		libclutter-1.0.so:graphics/clutter \
		libgee-0.8.so:devel/libgee \
		libgexiv2.so:graphics/gexiv2 \
		libgranite.so:x11-toolkits/granite \
		libmutter-10.so:x11-wm/mutter \
		#

USES=	gettext-tools meson ninja vala pkgconfig gnome #xorg
MESON_ARGS=	--prefix=${PREFIX}
MESON_BUILD_DIR=	build
USE_GNOME=	gtk30 glib20 gnomedesktop3
# USE_XORG=	x11
USE_GITHUB=	yes
GH_ACCOUNT=	elementary

DISTDIR=	${PWD}

do-build:
	cd ${WRKSRC} && meson setup build
	cd ${WRKSRC}/build && ninja

do-install:
	cd ${WRKSRC}/build && ninja install

.include <bsd.port.mk>
