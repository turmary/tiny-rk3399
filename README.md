# Description

  This project will retrieve all TPL & SPL files from recently U-Boot

# Usage
  ```bash
  cd u-boot; git checkout -b v2021.07-rk3399 v2021.07
  git clone https://github.com/turmary/tiny-rk3399.git ../tiny-rk3399
  git am ../tiny-rk3399/patches-2021.07/*.patch
  make -C . ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- firefly-rk3399_defconfig
  make -C . ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- idbloader.img
  (cd ../tiny-rk3399; git add mk-patch; git clean -dfx .)
  ../tiny-rk3399/mk-patch
  make -C ../tiny-rk3399 ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- idbloader.img # KCPPFLAGS="-DDEBUG=1"
  ```
