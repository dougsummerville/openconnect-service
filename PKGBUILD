#maintainer  Doug Summerville dsummer at binghamton.edu
pkgname=openconnect-service
pkgver=1.0
pkgrel=1
pkgdesc="Template service starting openconnect vpn"
arch=('any')
license=('MIT')
depends=('openconnect')
source=(openconnect@.service)
md5sums=('9f1d9e94fc48848d0ef89e1a6048a7b7')

package() {
    install -dm755 ${pkgdir}/etc/openconnect
    install -dm755 ${pkgdir}/usr/lib/systemd/system
    install -m744 ${srcdir}/openconnect@.service ${pkgdir}/usr/lib/systemd/system/openconnect@.service
}
