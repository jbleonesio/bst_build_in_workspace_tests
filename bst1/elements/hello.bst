kind: manual
description: |

  Building manually

# Depend on the base system
depends:
- base.bst

build-depends:
- freedesktop-sdk.bst:components/ccache.bst

# Stage the files/src directory for building
sources:
  - kind: local
    path: files/src

environment:
  CCACHE_DIR: ".ccache"

# Now configure the commands to run
config:

  build-commands:
  - make CC='ccache gcc' PREFIX="%{prefix}"

  install-commands:
  - make -j1 PREFIX="%{prefix}" DESTDIR="%{install-root}" install
