# unfriction — Homebrew tap

Install **unfriction**, a command-line tool for inspecting recorded AI coding-agent executions, on macOS.

unfriction is being developed to make agent task execution and context acquisition observable. Supported trace formats and inspection capabilities evolve between releases; check [release notes](https://github.com/unfriction-ai/unfriction-releases/releases/latest) for changes and `unfriction inspect --help` for usage supported by your installed version.

This repository maintains the [Homebrew formula](Formula/unfriction.rb). Public binary archives and checksums are published separately in [unfriction-releases](https://github.com/unfriction-ai/unfriction-releases).

## Install

Requires [Homebrew](https://brew.sh/) on macOS. The formula supports **Apple Silicon (arm64)** and **Intel (amd64)** Macs.

```sh
brew install unfriction-ai/tap/unfriction
unfriction --version
brew test unfriction-ai/tap/unfriction
```

## Inspect a recorded run

```sh
unfriction inspect --help
unfriction inspect /path/to/supported-trace.jsonl
```

Check the help output for your installed version's input contract and limitations. The CLI inspects a trace you provide; public release archives do **not** include private development fixtures. Execution completion should not be confused with independently verified engineering success.

## Update or remove

```sh
brew update
brew upgrade unfriction
```

```sh
brew uninstall unfriction
brew untap unfriction-ai/tap
```

## Distribution and source

- [Homebrew formula](Formula/unfriction.rb) — install recipe, download URLs, and SHA-256 checksums for the supported macOS architectures.
- [Latest release notes](https://github.com/unfriction-ai/unfriction-releases/releases/latest) — changes in the latest published release.
- [All GitHub Releases](https://github.com/unfriction-ai/unfriction-releases/releases) — versioned binaries and checksum files.
- [Release repository documentation](https://github.com/unfriction-ai/unfriction-releases#readme) — direct downloads and checksum verification.

The application source is maintained in a separate **private** repository. Homebrew installs public release binaries without requiring access to that repository or GitHub authentication.
