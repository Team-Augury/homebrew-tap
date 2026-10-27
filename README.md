# Augry Homebrew tap

```bash
brew tap team-augury/tap
brew trust team-augury/tap
brew install --cask augry
```

Homebrew asks you to trust a tap before it installs from it, hence the second
line. Augry keeps itself up to date, so `brew upgrade` leaves it alone unless
you pass `--greedy`. Augry's release workflow updates the cask on every
release.
