#maintainer  Doug Summerville dsummer at binghamton.edu
pkgname=openconnect-service
pkgver=1.0
pkgrel=1
pkgdesc="Template service starting openconnect vpn"
arch=('any')
license=('MIT')
depends=('openconnect')
source=(openconnect@.service ssl.example.edu ssl.example.edu.password)
md5sums=('9f1d9e94fc48848d0ef89e1a6048a7b7'
         '3dc0ee00cab30be58836ee71db7574c3'
         '451907a70c6bb79f3b72f25a49ff2645')

package() {
    install -dm755 ${pkgdir}/etc/openconnect
    install -m600 ${srcdir}/ssl.example.edu ${pkgdir}/etc/openconnect/
    install -m600 ${srcdir}/ssl.example.edu.password ${pkgdir}/etc/openconnect/
    install -dm755 ${pkgdir}/usr/lib/systemd/system
    install -m744 ${srcdir}/openconnect@.service ${pkgdir}/usr/lib/systemd/system/openconnect@.service
}
