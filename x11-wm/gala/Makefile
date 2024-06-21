PORTNAME=	gala
DISTVERSION=	7.1.3
CATEGORIES=	x11-wm

MAINTAINER=	inucat@proton.me
COMMENT=	Unofficial port of Gala window manager developed by elementary OS team
WWW=		https://github.com/elementary/gala

LICENSE=	GPLv3

BUILD_DEPENDS=	update-desktop-database:devel/desktop-file-utils
LIB_DEPENDS=	libcanberra.so:audio/libcanberra \
		libgee-0.8.so:devel/libgee \
		libgexiv2.so:graphics/gexiv2 \
		libgranite.so:x11-toolkits/granite \
		libgraphene-1.0.so:graphics/graphene \
		libmutter-10.so:x11-wm/mutter

USES=			gettext-tools gl gnome meson ninja pkgconfig vala xorg
MESON_ARGS=		--prefix=${PREFIX}
MESON_BUILD_DIR=	build
USE_GNOME=		cairo gdkpixbuf2 glib20 gnomedesktop3 gtk30
USE_GL=			glesv2
USE_XORG=		xfixes
USE_GITHUB=		yes
GH_ACCOUNT=		elementary

do-build:
	cd ${WRKSRC} && meson setup build
	cd ${WRKSRC}/build && ninja

do-stage:
	cd ${WRKSRC}/build && DESTDIR=${WRKSRC}/../stage ninja install

.include <bsd.port.mk>
