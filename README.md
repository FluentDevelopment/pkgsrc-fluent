# pkgsrc-fluent
Additional pkgsrc packages developed &amp; used by Fluent Development

To use, clone this repository to the `fluent` subfolder of your pkgsrc tree:
```sh
cd <path-to-pkgsrc> # NetBSD default is /usr/pkgsrc
git clone https://github.org/FluentDevelopment/pkgsrc-fluent.git fluent
```

To build a package:
```sh
cd <path-to-pkgsrc>/fluent/<pkgname>
$PREFIX/bin/bmake package
```

