#Maintainer: Alia Skywol <skywol@qq.com>

pkgname=Marea-icon-theme
pkgver=1.0
pkgrel=1
pkgdesc="Marea Icons"
arch=('any')
url="https://github.com/Skywol/Marea-icon-theme"
license=('GPL3')
replaces=('')
conflicts=('')
source=("$pkgname-$pkgver.tar.gz::https://github.com/Skywol/Marea-icon-theme/archive/$pkgver.tar.gz")
sha512sums=('790778275af317d8717322e1c649296319e212e2ee755a00b0509559e2c98579877a01448c608abb49af5c6f0f33564fb4d32c6b093bf70d32ef2f427bb77a2d')

package() {
  cd $pkgname-$pkgver
  make DESTDIR="$pkgdir" install
}
