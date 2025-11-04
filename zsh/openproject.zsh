function gcr() {
  local repo_path=$(git rev-parse --show-toplevel 2>/dev/null)
  case "$repo_path" in
  "")
    echo "Not in a git directory"
    exit 1
    ;;
  */release-??-?)
    echo "In a release directory"
    local release=$(basename "$repo_path" | sed -E 's#release-(..)-(.)#release/\1.\2#')
    echo "release: $release"
    git switch "$release"
    set +x
    ;;
  *)
    local last_release=$(git branch --remote --list --no-column 'origin/release/*' | sort -n | tail -1 | sed 's#origin/##')
    git switch "$last_release"
    ;;
  esac
}

