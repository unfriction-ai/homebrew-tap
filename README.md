# unfriction — Homebrew tap

Install **unfriction**, an experimental command-line tool for inspecting recorded AI coding-agent runs, on macOS.

The current walking skeleton inspects **one Codex turn without tool calls**. It displays the task, final response, and execution state. `COMPLETED` means the agent's execution ended normally; it **does not** mean the engineering task was verified as successful.

This repository contains the [Homebrew formula](Formula/unfriction.rb), not the application source or compiled binaries. Public versioned archives and checksums are published in [unfriction-releases](https://github.com/unfriction-ai/unfriction-releases).

## Install

Requires [Homebrew](https://brew.sh/) on macOS. The formula supports **Apple Silicon (arm64)** and **Intel (amd64)** Macs.

```sh
brew install unfriction-ai/tap/unfriction
```

The initial published formula targets version **0.1.0**. Verify your installed version with:

```sh
unfriction --version
brew test unfriction-ai/tap/unfriction
```

## Inspect a recorded run

```sh
unfriction inspect /path/to/codex-turn.jsonl
```

The current input contract supports a single Codex rollout turn, with a task and final response, **without tool calls**. A final response without a matching completion event is reported as `INCOMPLETE`; malformed or unsupported input returns an error.

The CLI inspects a trace you provide. Public release archives do **not** include private development fixtures.

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

- [Homebrew formula](Formula/unfriction.rb) — install recipe, artifact URLs, and SHA-256 values for both macOS architectures.
- [GitHub Releases](https://github.com/unfriction-ai/unfriction-releases/releases) — public versioned binaries and checksum file.
- [Release repository README](https://github.com/unfriction-ai/unfriction-releases#readme) — direct-download and checksum guidance.

The application source is in a separate **private** repository. Installing via Homebrew downloads public release artifacts and needs neither access to the private repository nor GitHub authentication.
