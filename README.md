# mahirfatih/homebrew-tap

My personal [Homebrew](https://brew.sh) tap for macOS applications and CLI tools.

## Available Apps

| App | Description | Install |
|-----|-------------|---------|
| [CheapSeek](https://github.com/mahirfatih/cheapseek) | macOS menu bar app that shows when the DeepSeek API is off-peak | `brew install --cask mahirfatih/tap/cheapseek` |

## Usage

First, add the tap (optional — Homebrew will do this automatically on install):

```sh
brew tap mahirfatih/tap
brew trust --tap mahirfatih/tap
```

Then install a cask:

```sh
brew install --cask mahirfatih/tap/cheapseek
```

Or upgrade:

```sh
brew upgrade --cask cheapseek
```

## Validating the cask

```sh
brew tap mahirfatih/tap
brew audit --cask cheapseek
brew style --cask cheapseek
brew info --cask cheapseek
```
