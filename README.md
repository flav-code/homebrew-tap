# flav-code's Homebrew tap

```sh
brew install --cask flav-code/tap/asterism
```

[Asterism](https://github.com/flav-code/asterism) shows every AI coding agent session on your machine at once. The app
updates itself; `brew upgrade --greedy` updates it too.

It is not signed yet, so macOS blocks it the first time you open it: go to System Settings → Privacy & Security, then
click Open Anyway next to Asterism.

The cask follows Asterism's releases on its own (see `.github/workflows/update.yml`).
