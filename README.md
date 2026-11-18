# Dotfiles

Personal dotfiles, managed using [chezmoi](https://www.chezmoi.io/).

## Setup

1. Install chezmoi (`pacman -S chezmoi` or `brew install chezmoi`).
1. Copy chezmoi data file from the example (`cp -i chezmoidata.toml.example chezmoidata.toml`).
1. Set the correct values in `chezmoidata.toml`.
1. Run `chezmoi apply` to set up the dotfiles for your machine.

## Brewfile

On macOS, chezmoi writes `dot_Brewfile` to `~/.Brewfile`. Homebrew uses this path as the global Brewfile. The Brewfile lists only taps, formulae, and casks.

To install all packages from the Brewfile on a new Mac, run:

```sh
brew bundle --global
```

To update the Brewfile after you install or remove packages:

1. Write the installed taps, formulae, and casks to `~/.Brewfile`:

   ```sh
   brew bundle dump --global --force --tap --formula --cask --no-describe
   ```

   The dump includes only the formulae that you installed yourself, not their dependencies.
1. Copy the file into the chezmoi source directory with `chezmoi re-add ~/.Brewfile`.
1. Check the changes with `git diff` in the chezmoi source directory, and commit them.

## Manual steps

- **Claude Desktop:** the app has no file for global instructions. Paste the content of `.chezmoitemplates/writing-style.md` into *Settings → Profile → personal preferences*. This setting syncs with your account, so do it once.
