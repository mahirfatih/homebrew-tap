# mahirfatih/homebrew-tap

My personal [Homebrew](https://brew.sh) tap for macOS applications and CLI tools.

## Available apps

| App | Description | Install |
| :-- | :---------- | :------ |
| [CheapSeek](https://github.com/mahirfatih/cheapseek) | macOS menu bar app that shows when the DeepSeek API is off-peak | `brew install --cask mahirfatih/tap/cheapseek` |

**Requirements:** macOS 14 (Sonoma) or newer.

## Usage

### Install

One line (Homebrew adds the tap automatically):

```sh
brew install --cask mahirfatih/tap/cheapseek
```

Or in two steps:

```sh
brew tap mahirfatih/tap
brew trust --tap mahirfatih/tap
brew install --cask cheapseek
```

### Upgrade

```sh
brew update
brew upgrade --cask cheapseek
```

### Uninstall

```sh
brew uninstall --cask cheapseek        # keeps your preferences
brew uninstall --cask --zap cheapseek  # also removes preferences
```

## How the names map

`mahirfatih/tap/cheapseek` → GitHub repo `mahirfatih/homebrew-tap` →
file `Casks/cheapseek.rb`. (Homebrew adds the `homebrew-` prefix for you.)

## Troubleshooting

| Symptom | Fix |
| :------ | :-- |
| `Cask 'cheapseek' is not available` | Add the tap first: `brew tap mahirfatih/tap`. |
| `SHA256 mismatch` | The cask is out of sync with the release. Open an issue; the maintainer needs to re-run `scripts/update-cask.sh`. |
| Gatekeeper says "damaged" / "unidentified developer" | The release DMG is not notarized. Please report it on the [CheapSeek issues page](https://github.com/mahirfatih/cheapseek/issues). |
| `brew upgrade` says up to date | Run `brew update` first, then retry. |
| Stale download | `brew cleanup --prune=all` and retry. |

## For maintainers

Repository layout:

```
homebrew-tap/
├── README.md
└── Casks/
    └── cheapseek.rb
```

Publishing a new version (release first, then cask, in this order):

```sh
./scripts/release.sh --notarize --publish   # in the cheapseek repo
./scripts/update-cask.sh 1.0.1              # computes sha256, commits, pushes
```

Validating the cask:

```sh
brew tap mahirfatih/tap
brew trust --tap mahirfatih/tap
brew audit --cask --strict --online mahirfatih/tap/cheapseek
brew style --cask mahirfatih/tap/cheapseek
brew info --cask cheapseek
ruby -c Casks/cheapseek.rb                  # quick syntax check
```

Full details: [HOMEBREW.md](https://github.com/mahirfatih/cheapseek/blob/main/docs/HOMEBREW.md)
and [RELEASE.md](https://github.com/mahirfatih/cheapseek/blob/main/docs/RELEASE.md).
