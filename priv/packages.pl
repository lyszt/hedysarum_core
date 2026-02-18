package(acl, 2, [:glibc], [0]).
package(amd-ucode, 20260110, [], []).
package(archlinux-keyring, 20260206, [:pacman], [0]).
package(attr, 2, [:glibc], [0]).
package(audispd-plugins, 4, [:audit, :"libaudit.so", :"libauparse.so", :glibc, :krb5, :"libkrb5.so", :"libgssapi_krb5.so", :"libcap-ng", :"libcap-ng.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(audispd-plugins-zos, 4, [:audit, :"libauparse.so", :glibc, :"libcap-ng", :"libcap-ng.so", :libldap], [0, 0, 0, 0, 0, 0]).
package(audit, 4, [:bash, :glibc, :krb5, :"libkrb5.so", :"libgssapi_krb5.so", :"libcap-ng", :"libcap-ng.so"], [0, 0, 0, 0, 0, 0, 0]).
package(autoconf, 2, [:awk, :m4, :diffutils, :perl, :sh], [0, 0, 0, 0, 0]).
package(automake, 1, [:perl, :bash], [0, 0]).
package(b43-fwcutter, 19, [:glibc], [0]).
package(base, 3, [:filesystem, :"gcc-libs", :glibc, :bash, :coreutils, :file, :findutils, :gawk, :grep, :"procps-ng", :sed, :tar, :gettext, :pciutils, :psmisc, :shadow, :"util-linux", :bzip2, :gzip, :xz, :licenses, :pacman, :"archlinux-keyring", :systemd, :"systemd-sysvcompat", :iputils, :iproute2], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(base-devel, 1, [:"archlinux-keyring", :autoconf, :automake, :binutils, :bison, :debugedit, :fakeroot, :file, :findutils, :flex, :gawk, :gcc, :gettext, :grep, :groff, :gzip, :libtool, :m4, :make, :pacman, :patch, :pkgconf, :sed, :sudo, :texinfo, :which], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(bash, 5, [:readline, :"libreadline.so", :glibc, :ncurses], [0, 0, 0, 0]).
package(binutils, 2, [:"gcc-libs", :glibc, :jansson, :libelf, :zlib, :zstd], [0, 0, 0, 0, 0, 0]).
package(bison, 3, [:gettext, :glibc, :m4, :sh], [0, 0, 0, 0]).
package(brotli, 1, [:glibc], [0]).
package(brotli-testdata, 1, [], []).
package(btrfs-progs, 6, [:glibc, :libgcrypt, :lzo, :"systemd-libs", :"util-linux-libs", :zlib, :zstd], [0, 0, 0, 0, 0, 0, 0]).
package(bzip2, 1, [:glibc, :sh], [0, 0]).
package(ca-certificates, 20240618, [:"ca-certificates-mozilla"], [0]).
package(ca-certificates-mozilla, 3, [:"ca-certificates-utils"], [0]).
package(ca-certificates-utils, 20240618, [:bash, :coreutils, :findutils, :"p11-kit"], [0, 0, 0, 0]).
package(coreutils, 9, [:acl, :attr, :glibc, :gmp, :libcap, :openssl], [0, 0, 0, 0, 0, 0]).
package(cracklib, 2, [:glibc, :zlib], [0, 0]).
package(cryptsetup, 2, [:"device-mapper", :"libdevmapper.so", :glibc, :openssl, :"libcrypto.so", :popt, :"util-linux-libs", :"libblkid.so", :"libuuid.so", :"json-c", :"libjson-c.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(curl, 8, [:"ca-certificates", :brotli, :"libbrotlidec.so", :krb5, :"libgssapi_krb5.so", :libidn2, :"libidn2.so", :libnghttp2, :"libnghttp2.so", :libnghttp3, :"libnghttp3.so", :libngtcp2, :"libngtcp2.so", :libpsl, :"libpsl.so", :libssh2, :"libssh2.so", :openssl, :"libcrypto.so", :"libssl.so", :zlib, :"libz.so", :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(dash, 0, [:glibc, :libedit, :"libedit.so"], [0, 0, 0]).
package(db, 6, [:libgcc, :"libstdc++", :sh], [0, 0, 0]).
package(db5.3, 5, [:libgcc, :"libstdc++", :sh], [0, 0, 0]).
package(dbus, 1, [:audit, :expat, :glibc, :"libcap-ng", :"systemd-libs", :"libaudit.so", :"libcap-ng.so", :"libexpat.so", :"libsystemd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(dbus-broker, 37, [:audit, :expat, :glibc, :"libcap-ng", :libgcc, :"systemd-libs", :"libaudit.so", :"libcap-ng.so", :"libexpat.so", :"libsystemd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(dbus-broker-units, 37, [:dbus, :"dbus-broker"], [0, 0]).
package(dbus-daemon-units, 1, [:dbus], [0]).
package(dbus-docs, 1, [], []).
package(dbus-units, 37, [:"dbus-broker-units"], [0]).
package(debugedit, 5, [:glibc, :libelf, :xxhash], [0, 0, 0]).
package(debuginfod, 0, [:"gcc-libs", :glibc, :"json-c", :libarchive, :"libarchive.so", :libelf, :libmicrohttpd, :"libmicrohttpd.so", :sqlite, :"libsqlite3.so", :xz, :"liblzma.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(device-mapper, 2, [:glibc, :"systemd-libs", :"libudev.so"], [0, 0, 0]).
package(diffutils, 3, [:glibc, :bash], [0, 0]).
package(ding-libs, 0, [:glibc], [0]).
package(dmraid, 1, [:"device-mapper"], [0]).
package(dnssec-anchors, 20250524, [], []).
package(dosfstools, 4, [:glibc], [0]).
package(e2fsprogs, 1, [:sh, :"util-linux-libs"], [0, 0]).
package(efibootmgr, 18, [:glibc, :popt, :efivar, :"libefiboot.so", :"libefivar.so"], [0, 0, 0, 0, 0]).
package(efivar, 39, [:glibc], [0]).
package(elfutils, 0, [:"gcc-libs", :glibc, :libarchive, :"libarchive.so", :libelf, :sh], [0, 0, 0, 0, 0, 0]).
package(expat, 2, [:glibc], [0]).
package(fakeroot, 1, [:glibc, :filesystem, :sed, :"util-linux", :sh], [0, 0, 0, 0, 0]).
package(file, 5, [:glibc, :bzip2, :"libbz2.so", :libseccomp, :"libseccomp.so", :xz, :"liblzma.so", :zlib, :"libz.so", :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(filesystem, 2025, [:"iana-etc"], [0]).
package(findutils, 4, [:glibc], [0]).
package(flex, 2, [:glibc, :m4, :sh], [0, 0, 0]).
package(fuse2fs, 1, [:fuse3, :e2fsprogs], [0, 0]).
package(gawk, 5, [:sh, :glibc, :mpfr], [0, 0, 0]).
package(gc, 8, [:"gcc-libs"], [0]).
package(gcc, 15, [:"gcc-libs", :binutils, :libmpc, :zstd, :"libisl.so"], [0, 0, 0, 0, 0]).
package(gcc-ada, 15, [:gcc, :"libisl.so"], [0, 0]).
package(gcc-d, 15, [:gcc, :libgphobos, :"libisl.so"], [0, 0, 0]).
package(gcc-fortran, 15, [:gcc, :libgfortran, :"libisl.so"], [0, 0, 0]).
package(gcc-gcobol, 15, [:gcc, :libgcobol, :"libisl.so"], [0, 0, 0]).
package(gcc-go, 15, [:gcc, :libgo, :"libisl.so"], [0, 0, 0]).
package(gcc-libs, 15, [:glibc, :libasan, :libatomic, :libgfortran, :libgcc, :libgomp, :liblsan, :libobjc, :libquadmath, :"libstdc++", :libtsan, :libubsan], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(gcc-m2, 15, [:gcc, :"libisl.so"], [0, 0]).
package(gcc-objc, 15, [:gcc, :libobjc, :"libisl.so"], [0, 0, 0]).
package(gcc-rust, 15, [:gcc, :"libisl.so"], [0, 0]).
package(gdbm, 1, [:glibc, :sh, :readline, :"libreadline.so"], [0, 0, 0, 0]).
package(gettext, 1, [:acl, :attr, :curl, :glibc, :"json-c", :libgcc, :libgomp, :"libstdc++", :"gnulib-l10n", :libunistring, :libxml2, :ncurses, :sh], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(glib2, 2, [:bash, :glibc, :libffi, :"libsysprof-capture", :pcre2, :"util-linux-libs", :zlib, :"libffi.so", :"libmount.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(glib2-devel, 2, [:glib2, :glibc, :libelf, :python, :"python-packaging"], [0, 0, 0, 0, 0]).
package(glib2-docs, 2, [], []).
package(glibc, 2, [:"linux-api-headers", :tzdata, :filesystem], [0, 0, 0]).
package(glibc-locales, 2, [:glibc], [0]).
package(gmp, 6, [:"gcc-libs", :glibc], [0, 0]).
package(gnulib-l10n, 20241231, [], []).
package(gnupg, 2, [:glibc, :gnutls, :libgcrypt, :"libgpg-error", :libksba, :libldap, :libusb, :pinentry, :sh, :sqlite, :"tpm2-tss", :zlib, :bzip2, :"libbz2.so", :libassuan, :"libassuan.so", :npth, :"libnpth.so", :readline, :"libreadline.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(gnutls, 3, [:glibc, :gmp, :libtasn1, :zlib, :nettle, :leancrypto, :"libstdc++", :libgcc, :"libp11-kit", :libidn2, :zstd, :"libidn2.so", :libunistring, :brotli], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(gpgme, 2, [:"gcc-libs", :glib2, :glibc, :libassuan, :"libgpg-error", :gnupg], [0, 0, 0, 0, 0, 0]).
package(gpm, 1, [:bash, :"procps-ng"], [0, 0]).
package(grep, 3, [:glibc, :pcre2], [0, 0]).
package(groff, 1, [:glibc, :libgcc, :"libstdc++", :perl], [0, 0, 0, 0]).
package(grub, 2, [:"device-mapper", :gettext, :sh, :xz], [0, 0, 0, 0]).
package(gssproxy, 0, [:"libverto-module-base", :popt, :"ding-libs", :"systemd-libs", :krb5, :glibc], [0, 0, 0, 0, 0, 0]).
package(guile, 3, [:gmp, :ncurses, :libunistring, :gc, :libffi, :libxcrypt], [0, 0, 0, 0, 0, 0]).
package(gzip, 1, [:glibc, :bash, :coreutils, :sed, :grep], [0, 0, 0, 0, 0]).
package(hdparm, 9, [:glibc], [0]).
package(hwdata, 0, [], []).
package(iana-etc, 20260203, [], []).
package(icu, 78, [:glibc, :"libstdc++", :libgcc, :sh], [0, 0, 0, 0]).
package(inetutils, 2, [:glibc, :pam, :libcap, :readline, :ncurses, :libxcrypt, :"libpam.so", :"libcrypt.so", :"libreadline.so", :"libncursesw.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(iproute2, 6, [:glibc, :"libxtables.so", :libcap, :"libcap.so", :libelf, :libbpf, :"libbpf.so"], [0, 0, 0, 0, 0, 0, 0]).
package(iptables, 1, [:libnftnl, :libpcap, :libnfnetlink, :libnetfilter_conntrack, :bash], [0, 0, 0, 0, 0]).
package(iptables-nft, 1, [:libnftnl, :libpcap, :libnfnetlink, :libnetfilter_conntrack, :bash, :nftables], [0, 0, 0, 0, 0, 0]).
package(iputils, 20250605, [:libcap, :libidn2], [0, 0]).
package(iw, 6, [:libnl], [0]).
package(jansson, 2, [:glibc], [0]).
package(jfsutils, 1, [:"util-linux"], [0]).
package(json-c, 0, [:glibc], [0]).
package(kbd, 2, [:glibc, :gzip, :pam], [0, 0, 0]).
package(keyutils, 1, [:glibc, :sh], [0, 0]).
package(kmod, 34, [:glibc, :zlib, :openssl, :xz, :zstd], [0, 0, 0, 0, 0]).
package(krb5, 1, [:bash, :e2fsprogs, :glibc, :keyutils, :libldap, :"libverto-module-base", :openssl, :lmdb, :"libcom_err.so", :"libkeyutils.so", :"libss.so", :"libverto.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(ldns, 1, [:openssl, :"dnssec-anchors"], [0, 0]).
package(leancrypto, 1, [:glibc], [0]).
package(lemon, 3, [:glibc], [0]).
package(less, 1, [:glibc, :ncurses, :pcre2], [0, 0, 0]).
package(lib32-gcc-libs, 15, [:"lib32-glibc"], [0]).
package(lib32-glibc, 2, [:glibc], [0]).
package(lib32-libltdl, 2, [:sh, :tar, :"lib32-glibc", :libtool], [0, 0, 0, 0]).
package(libaio, 0, [:glibc], [0]).
package(libarchive, 3, [:acl, :"libacl.so", :bzip2, :"libbz2.so", :glibc, :libxml2, :"libxml2.so", :lz4, :openssl, :"libcrypto.so", :xz, :"liblzma.so", :zlib, :"libz.so", :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(libasan, 15, [:glibc], [0]).
package(libassuan, 3, [:glibc, :"libgpg-error", :sh], [0, 0, 0]).
package(libatomic, 15, [:glibc], [0]).
package(libbpf, 1, [:glibc, :libelf, :"linux-api-headers", :zlib], [0, 0, 0, 0]).
package(libcap, 2, [:glibc, :pam], [0, 0]).
package(libcap-ng, 0, [:glibc], [0]).
package(libcurl-compat, 8, [:"ca-certificates", :brotli, :"libbrotlidec.so", :krb5, :"libgssapi_krb5.so", :libidn2, :"libidn2.so", :libnghttp2, :"libnghttp2.so", :libnghttp3, :"libnghttp3.so", :libngtcp2, :"libngtcp2.so", :libpsl, :"libpsl.so", :libssh2, :"libssh2.so", :openssl, :"libcrypto.so", :"libssl.so", :zlib, :"libz.so", :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(libcurl-gnutls, 8, [:"ca-certificates", :brotli, :"libbrotlidec.so", :gnutls, :krb5, :"libgssapi_krb5.so", :libidn2, :"libidn2.so", :libnghttp2, :"libnghttp2.so", :libnghttp3, :"libnghttp3.so", :libngtcp2, :"libngtcp2.so", :"libngtcp2_crypto_gnutls.so", :libpsl, :"libpsl.so", :libssh2, :"libssh2.so", :nettle, :"libnettle.so", :zlib, :"libz.so", :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(libedit, 20250104, [:glibc, :"libncursesw.so", :ncurses], [0, 0, 0]).
package(libelf, 0, [:bzip2, :"libbz2.so", :curl, :"libcurl.so", :glibc, :"json-c", :xz, :"liblzma.so", :zlib, :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(libevent, 2, [:glibc, :openssl], [0, 0]).
package(libevent-docs, 2, [], []).
package(libffi, 3, [:glibc], [0]).
package(libgcc, 15, [:glibc], [0]).
package(libgccjit, 15, [:gcc, :"libisl.so"], [0, 0]).
package(libgcobol, 15, [:glibc], [0]).
package(libgcrypt, 1, [:"libgpg-error", :glibc], [0, 0]).
package(libgfortran, 15, [:glibc], [0]).
package(libgm2, 15, [:glibc], [0]).
package(libgo, 15, [:glibc], [0]).
package(libgomp, 15, [:glibc], [0]).
package(libgpg-error, 1, [:glibc, :sh], [0, 0]).
package(libgphobos, 15, [:glibc], [0]).
package(libidn2, 2, [:libunistring, :"libunistring.so"], [0, 0]).
package(libinih, 61, [:"gcc-libs", :glibc], [0, 0]).
package(libisl, 0, [:gmp], [0]).
package(libitm, 15, [:glibc], [0]).
package(libksba, 1, [:bash, :"libgpg-error", :glibc], [0, 0, 0]).
package(libldap, 2, [:libsasl], [0]).
package(liblsan, 15, [:glibc], [0]).
package(libmakepkg-dropins, 20, [:awk, :bash, :coreutils, :findutils, :grep, :sed, :binutils], [0, 0, 0, 0, 0, 0, 0]).
package(libmicrohttpd, 1, [:gnutls], [0]).
package(libmnl, 1, [:glibc], [0]).
package(libmpc, 1, [:glibc, :gmp, :mpfr], [0, 0, 0]).
package(libnetfilter_conntrack, 1, [:libnfnetlink, :libmnl], [0, 0]).
package(libnfnetlink, 1, [:glibc], [0]).
package(libnftnl, 1, [:libmnl], [0]).
package(libnghttp2, 1, [:glibc], [0]).
package(libnghttp3, 1, [:glibc], [0]).
package(libngtcp2, 1, [:glibc, :openssl, :"libssl.so", :gnutls], [0, 0, 0, 0]).
package(libnl, 3, [:glibc, :"gcc-libs"], [0, 0]).
package(libnsl, 2, [:glibc, :libtirpc], [0, 0]).
package(libobjc, 15, [:glibc], [0]).
package(libp11-kit, 0, [:glibc, :libffi, :libtasn1], [0, 0, 0]).
package(libpcap, 1, [:glibc, :libnl, :sh, :"libdbus-1.so"], [0, 0, 0, 0]).
package(libpipeline, 1, [:glibc], [0]).
package(libpsl, 0, [:libidn2, :libunistring, :"libidn2.so", :"libunistring.so"], [0, 0, 0, 0]).
package(libquadmath, 15, [:glibc], [0]).
package(libsasl, 2, [:glibc, :gdbm, :"libgdbm.so", :openssl, :"libcrypto.so"], [0, 0, 0, 0, 0]).
package(libseccomp, 2, [:glibc], [0]).
package(libsecret, 0, [:glib2, :glibc, :libgcrypt, :"tpm2-tss"], [0, 0, 0, 0]).
package(libsecret-docs, 0, [], []).
package(libssh2, 1, [:openssl, :zlib], [0, 0]).
package(libstdc++, 15, [:glibc], [0]).
package(libtasn1, 4, [:glibc], [0]).
package(libtirpc, 1, [:krb5, :glibc], [0, 0]).
package(libtool, 2, [:sh, :tar, :glibc], [0, 0, 0]).
package(libtsan, 15, [:glibc], [0]).
package(libubsan, 15, [:glibc], [0]).
package(libunistring, 1, [:glibc], [0]).
package(libusb, 1, [:glibc, :"systemd-libs", :"libudev.so"], [0, 0, 0]).
package(libverto, 0, [:glibc, :libevent], [0, 0]).
package(libxcrypt, 4, [:glibc], [0]).
package(libxcrypt-compat, 4, [:libxcrypt], [0]).
package(libxml2, 2, [:bash, :glibc, :icu, :readline, :zlib, :"libicuuc.so"], [0, 0, 0, 0, 0, 0]).
package(libxml2-docs, 2, [], []).
package(licenses, 20240728, [], []).
package(links, 2, [:brotli, :"libbrotlidec.so", :bzip2, :"libbz2.so", :gpm, :"libgpm.so", :libevent, :openssl, :xz, :zstd, :"libzstd.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(linux, 6, [:coreutils, :initramfs, :kmod], [0, 0, 0]).
package(linux-api-headers, 6, [], []).
package(linux-docs, 6, [], []).
package(linux-firmware, 20260110, [:"linux-firmware-amdgpu", :"linux-firmware-atheros", :"linux-firmware-broadcom", :"linux-firmware-cirrus", :"linux-firmware-intel", :"linux-firmware-mediatek", :"linux-firmware-nvidia", :"linux-firmware-other", :"linux-firmware-radeon", :"linux-firmware-realtek"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(linux-firmware-amdgpu, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-atheros, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-broadcom, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-cirrus, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-intel, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-liquidio, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-marvell, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-mediatek, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-mellanox, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-nfp, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-nvidia, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-other, 20260110, [], []).
package(linux-firmware-qcom, 20260110, [:"linux-firmware-atheros", :"linux-firmware-whence"], [0, 0]).
package(linux-firmware-qlogic, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-radeon, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-realtek, 20260110, [:"linux-firmware-whence"], [0]).
package(linux-firmware-whence, 20260110, [], []).
package(linux-headers, 6, [:pahole], [0]).
package(linux-lts, 6, [:coreutils, :initramfs, :kmod], [0, 0, 0]).
package(linux-lts-docs, 6, [], []).
package(linux-lts-headers, 6, [:pahole], [0]).
package(logrotate, 3, [:popt, :gzip, :acl], [0, 0, 0]).
package(lto-dump, 15, [:gcc, :"libisl.so"], [0, 0]).
package(lvm2, 2, [:bash, :"device-mapper", :"systemd-libs", :"libudev.so", :"util-linux-libs", :"libblkid.so", :readline, :"libreadline.so", :"thin-provisioning-tools", :libaio, :"libaio.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(lz4, 1, [:glibc], [0]).
package(lzo, 2, [:glibc], [0]).
package(m4, 1, [:glibc, :bash], [0, 0]).
package(make, 4, [:glibc, :guile], [0, 0]).
package(man-db, 2, [:bash, :gdbm, :zlib, :groff, :libpipeline, :less, :libseccomp, :glibc], [0, 0, 0, 0, 0, 0, 0, 0]).
package(man-pages, 6, [], []).
package(man-pages-utils, 6, [:sh], [0]).
package(mdadm, 4, [:glibc, :systemd], [0, 0]).
package(minizip, 1, [:glibc, :zlib], [0, 0]).
package(mkinitcpio, 40, [:awk, :"mkinitcpio-busybox", :kmod, :"util-linux", :libarchive, :coreutils, :bash, :binutils, :diffutils, :findutils, :grep, :gzip, :filesystem, :zstd, :systemd], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(mkinitcpio-busybox, 1, [:glibc, :libxcrypt], [0, 0]).
package(mkinitcpio-nfs-utils, 0, [:glibc], [0]).
package(mpdecimal, 4, [:glibc, :"gcc-libs"], [0, 0]).
package(mpfr, 4, [:glibc, :gmp], [0, 0]).
package(nano, 8, [:ncurses, :file, :glibc], [0, 0, 0]).
package(ncurses, 6, [:glibc, :libgcc, :"libstdc++"], [0, 0, 0]).
package(net-tools, 2, [:glibc], [0]).
package(nettle, 3, [:glibc, :gmp], [0, 0]).
package(nfs-utils, 2, [:rpcbind, :nfsidmap, :gssproxy, :libevent, :"device-mapper", :libxml2, :libtirpc, :e2fsprogs, :keyutils, :"util-linux-libs", :libnl, :krb5, :libcap, :glibc, :libgcc, :sh, :readline], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(nfsidmap, 2, [:libldap, :krb5, :glibc], [0, 0, 0]).
package(nilfs-utils, 2, [:"util-linux"], [0]).
package(npth, 1, [:glibc, :sh], [0, 0]).
package(nspr, 4, [:glibc, :sh], [0, 0]).
package(nss, 3, [:glibc, :nspr, :"p11-kit", :sh, :sqlite, :zlib], [0, 0, 0, 0, 0, 0]).
package(openldap, 2, [:libldap, :libtool, :unixodbc, :perl, :"systemd-libs", :libsodium], [0, 0, 0, 0, 0, 0]).
package(openssh, 10, [:glibc, :krb5, :"libkrb5.so", :"libgssapi_krb5.so", :libedit, :"libedit.so", :libxcrypt, :"libcrypt.so", :openssl, :"libcrypto.so", :pam, :"libpam.so", :zlib, :"libz.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(openssl, 3, [:glibc], [0]).
package(p11-kit, 0, [:coreutils, :glibc, :libtasn1, :"libp11-kit", :"libp11-kit.so"], [0, 0, 0, 0, 0]).
package(p11-kit-docs, 0, [], []).
package(pacman, 7, [:bash, :coreutils, :curl, :"libcurl.so", :gawk, :gettext, :glibc, :gnupg, :gpgme, :"libgpgme.so", :grep, :libarchive, :"libarchive.so", :openssl, :"libcrypto.so", :"pacman-mirrorlist", :systemd, :"libmakepkg-dropins"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(pacman-mirrorlist, 20260213, [], []).
package(pam, 1, [:audit, :glibc, :"libaudit.so", :"libcrypt.so", :libnsl, :libtirpc, :libxcrypt, :pambase, :"systemd-libs"], [0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(pambase, 20250719, [], []).
package(patch, 2, [:glibc, :attr], [0, 0]).
package(pciutils, 3, [:glibc, :hwdata, :kmod], [0, 0, 0]).
package(pcre, 8, [:glibc, :"gcc-libs", :readline, :zlib, :bzip2, :bash], [0, 0, 0, 0, 0, 0]).
package(pcre2, 10, [:bzip2, :glibc, :readline, :zlib], [0, 0, 0, 0]).
package(perl, 5, [:gdbm, :"db5.3", :glibc, :libxcrypt, :"libcrypt.so"], [0, 0, 0, 0, 0]).
package(pinentry, 1, [:glibc, :ncurses, :libassuan, :libsecret, :glib2, :"libglib-2.0.so", :"libncursesw.so", :"libsecret-1.so"], [0, 0, 0, 0, 0, 0, 0, 0]).
package(pkgconf, 2, [:glibc], [0]).
package(popt, 1, [:glibc], [0]).
package(ppp, 2, [:glibc, :libpcap, :libxcrypt, :openssl], [0, 0, 0, 0]).
package(pptpclient, 1, [:ppp, :iproute2, :perl], [0, 0, 0]).
package(procps-ng, 4, [:glibc, :ncurses, :"libncursesw.so", :"systemd-libs"], [0, 0, 0, 0]).
package(psmisc, 23, [:ncurses], [0]).
package(python, 3, [:bzip2, :expat, :gdbm, :libffi, :libnsl, :libxcrypt, :openssl, :zlib, :tzdata, :mpdecimal, :zstd], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(python-audit, 4, [:audit, :"libaudit.so", :"libauparse.so", :glibc, :python], [0, 0, 0, 0, 0]).
package(python-brotli, 1, [:python], [0]).
package(python-capng, 0, [:glibc, :"libcap-ng", :"libcap-ng.so", :python], [0, 0, 0, 0]).
package(python-libseccomp, 2, [:python, :glibc], [0, 0]).
package(python-tests, 3, [:python], [0]).
package(readline, 8, [:glibc, :"libncursesw.so", :ncurses], [0, 0, 0]).
package(rpcbind, 1, [:glibc, :libtirpc, :"systemd-libs"], [0, 0, 0]).
package(s-nail, 14, [:openssl, :krb5, :libidn2], [0, 0, 0]).
package(sdparm, 1, [:glibc, :bash], [0, 0]).
package(sed, 4, [:glibc, :acl], [0, 0]).
package(shadow, 4, [:glibc, :acl, :"libacl.so", :attr, :"libattr.so", :audit, :"libaudit.so", :libxcrypt, :"libcrypt.so", :pam, :"libpam.so", :"libpam_misc.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(sqlite, 3, [:readline, :zlib, :glibc], [0, 0, 0]).
package(sqlite-analyzer, 3, [:sqlite, :tcl, :glibc], [0, 0, 0]).
package(sqlite-doc, 3, [], []).
package(sqlite-tcl, 3, [:sqlite, :tcl, :glibc], [0, 0, 0]).
package(sudo, 1, [:glibc, :openssl, :pam, :libldap, :zlib, :"libcrypto.so", :"libssl.so"], [0, 0, 0, 0, 0, 0, 0]).
package(syslinux, 6, [], []).
package(systemd, 259, [:"systemd-libs", :acl, :bash, :cryptsetup, :"libcryptsetup.so", :dbus, :"dbus-units", :kbd, :kmod, :hwdata, :libgcrypt, :libxcrypt, :"libcrypt.so", :libidn2, :lz4, :pam, :libelf, :libseccomp, :"util-linux", :xz, :pcre2, :audit, :openssl, :"libcrypto.so", :"libssl.so"], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(systemd-libs, 259, [:glibc, :"gcc-libs", :libgcrypt, :lz4, :xz, :zstd], [0, 0, 0, 0, 0, 0]).
package(systemd-resolvconf, 259, [:systemd], [0]).
package(systemd-sysvcompat, 259, [:systemd], [0]).
package(systemd-tests, 259, [:systemd], [0]).
package(systemd-ukify, 259, [:systemd, :binutils, :"python-cryptography", :"python-pefile"], [0, 0, 0, 0]).
package(tar, 1, [:glibc, :acl], [0, 0]).
package(texinfo, 7, [:ncurses, :gzip, :perl, :sh], [0, 0, 0, 0]).
package(thin-provisioning-tools, 1, [:"gcc-libs", :"systemd-libs"], [0, 0]).
package(tpm2-tss, 4, [:curl, :"json-c", :openssl, :"libjson-c.so"], [0, 0, 0, 0]).
package(tzdata, 2025, [], []).
package(unixodbc, 2, [:readline, :libltdl, :glibc], [0, 0, 0]).
package(usbutils, 19, [:glibc, :hwdata, :libusb, :"libusb-1.0.so", :"systemd-libs", :"libudev.so"], [0, 0, 0, 0, 0, 0]).
package(util-linux, 2, [:"util-linux-libs", :coreutils, :file, :"libmagic.so", :glibc, :"libcap-ng", :libxcrypt, :"libcrypt.so", :ncurses, :"libncursesw.so", :pam, :readline, :shadow, :"systemd-libs", :"libsystemd.so", :"libudev.so", :zlib], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]).
package(util-linux-libs, 2, [:glibc, :sqlite], [0, 0]).
package(voa-verifiers-arch, 20260206, [], []).
package(which, 2, [:bash, :glibc], [0, 0]).
package(wireless-regdb, 2026, [:bash, :iw], [0, 0]).
package(wpa_supplicant, 2, [:glibc, :libdbus, :libnl, :openssl, :pcsclite, :readline], [0, 0, 0, 0, 0, 0]).
package(xfsprogs, 6, [:"device-mapper", :libedit, :libinih, :liburcu, :sh, :"util-linux-libs"], [0, 0, 0, 0, 0, 0]).
package(xz, 5, [:glibc, :sh], [0, 0]).
package(zlib, 1, [:glibc], [0]).
package(zstd, 1, [:glibc, :libgcc, :"libstdc++", :zlib, :xz, :lz4], [0, 0, 0, 0, 0, 0]).
% version_ok(+Pkg, +MinVer)
version_ok(Pkg, MinVer) :-
    package(Pkg, Ver, _, _),
    Ver >= MinVer.

% install_order(+Pkg, +MinVer, +Seen, -Result)
install_order(Pkg, MinVer, Seen, Seen) :-
    member(Pkg, Seen),
    version_ok(Pkg, MinVer).
install_order(Pkg, MinVer, Seen, Result) :-
    not(member(Pkg, Seen)),
    version_ok(Pkg, MinVer),
    package(Pkg, _, Deps, MinVers),
    install_deps(Deps, MinVers, Seen, Seen1),
    append(Seen1, [Pkg], Result).

% is_so_file(+Atom) - virtual .so deps are not packages to install
install_deps([H|T], [V|Vs], Seen, Result) :-
    (is_so_file(H) -> 
        install_deps(T, Vs, Seen, Result) % Skip it
    ; 
        install_order(H, V, Seen, Seen1),
        install_deps(T, Vs, Seen1, Result)
    ).

% resolve(+Pkg, -Path)
resolve(Pkg, Path) :-
    install_order(Pkg, 0, [], Path).

% find_path(+Pkg, -Plan) - smart collection: cycle-safe, skips .so deps
find_path(Pkg, Plan) :-
    resolve(Pkg, [], ReversedPlan),
    reverse(ReversedPlan, Plan).

% resolve(+Pkg, +Visited, -ReversedPlan) - builds reversed install order
resolve(Pkg, Visited, [Pkg|DepPlanReversed]) :-
    package(Pkg, _, Deps, _),
    \+ member(Pkg, Visited),
    resolve_list(Deps, [Pkg|Visited], DepPlanReversed).

% resolve_list(+Deps, +Visited, -DepPlanReversed)
resolve_list([], _, []).
resolve_list([H|T], Visited, Acc) :-
    (   is_so_file(H)
    ->  resolve_list(T, Visited, Acc)
    ;   resolve(H, Visited, PlanH),
        resolve_list(T, PlanH, PlanT),
        append(PlanH, PlanT, Acc)
    ).  

