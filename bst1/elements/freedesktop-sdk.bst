kind: junction
sources:
- kind: git_tag
  url: https://gitlab.com/freedesktop-sdk/freedesktop-sdk
  track: 'freedesktop-sdk-22.08.15'
  track-tags: true
  submodules:
    utils/buildstream-abi-checker:
      url: https://gitlab.com/freedesktop-sdk/buildstream-abi-checker.git
  ref: freedesktop-sdk-22.08.0-15-gd8632183948d7c5b2b29f4fc7954b13d5df81353
