#maintainer  Doug Summerville dsummer at binghamton.edu
pkgname=openconnect-service
pkgver=1.1
pkgrel=1
pkgdesc="Template service for openconnect vpn"
arch=('any')
license=('MIT')
depends=('openconnect')
source=(openconnect@.service openconnect-service-start.sh ssl.example.com ssl.example.com.passwd)
package() {
    install -dm755 ${pkgdir}/etc/openconnect
    install -dm755 ${pkgdir}/usr/bin
    install -dm755 ${pkgdir}/usr/lib/systemd/system
    install -m600 ${srcdir}/ssl.example.com ${pkgdir}/etc/openconnect/
    install -m600 ${srcdir}/ssl.example.com.passwd ${pkgdir}/etc/openconnect/
    install -m744 ${srcdir}/openconnect@.service ${pkgdir}/usr/lib/systemd/system/
    install -m744 ${srcdir}/openconnect-service-start.sh ${pkgdir}/usr/bin/
}
md5sums=('57d51738260f3973f866624d9d467690'
         '98e56ed78be5e0a9064fe46aef603f26'
         '300acdaf6a0d992d3729029697bc8951'
         '451907a70c6bb79f3b72f25a49ff2645')
