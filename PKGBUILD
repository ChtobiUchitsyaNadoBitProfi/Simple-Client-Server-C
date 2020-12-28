pkgname=LiteSH
pkgver=1.0
pkgrel=1
pkgdesc="Litesh create and manage processes"
url="https://github.com/ChtobiUchitsyaNadoBitProfi/Simple-Client-Server-C"
arch=('x86_64')
license=('custom')
makedepends=('git' 'make')
source=("git+$url")
md5sums=('SKIP')

build() {
    cd "$srcdir/Simple-Client-Server-C"
    make
}

package() {
    cd "$srcdir/Simple-Client-Server-C"
    make DESTDIR="${pkgdir}" install
}