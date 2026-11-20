# Fotollection's Homebrew tap

```sh
brew tap hoangphi01/tap && brew trust hoangphi01/tap
brew install --cask hoangphi01/tap/fotollection
```

Homebrew asks once to trust a tap outside its own (`brew trust`).

[Fotollection](https://fotollection.org/) prepares trip photos for printing: the best shots, the date and place on each print, the print kiosk's sizes, fully offline. Source: [hoangphi01/fotollection](https://github.com/hoangphi01/fotollection).

A workflow follows each release (`.github/workflows/bump.yml`), so `brew upgrade` brings the new version. The builds are not signed yet, so macOS asks once on first launch: System Settings → Privacy & Security → **Open Anyway**.
