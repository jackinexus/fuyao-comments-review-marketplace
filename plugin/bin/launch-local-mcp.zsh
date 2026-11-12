#!/bin/zsh
set -eu

if [[ "$#" -ne 1 || -z "$1" ]]; then
  print -u2 -- "fuyao_comments_review_runtime_invalid_plugin_root"
  exit 78
fi

plugin_root="$1"
kernel="$(/usr/bin/uname -s)"
machine="$(/usr/bin/uname -m)"

if [[ "$kernel" != "Darwin" ]]; then
  print -u2 -- "fuyao_comments_review_runtime_unsupported_os"
  exit 78
fi

case "$machine" in
  arm64)
    runtime_dir="darwin-arm64"
    ;;
  x86_64)
    runtime_dir="darwin-x86_64"
    ;;
  *)
    print -u2 -- "fuyao_comments_review_runtime_unsupported_architecture"
    exit 78
    ;;
esac

runtime="$plugin_root/runtime/$runtime_dir/fuyao-comments-review-local"
if [[ ! -f "$runtime" || ! -x "$runtime" ]]; then
  print -u2 -- "fuyao_comments_review_runtime_missing_or_not_executable"
  exit 78
fi

exec "$runtime"
