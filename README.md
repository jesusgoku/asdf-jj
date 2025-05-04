<div align="center">

# asdf-jj [![Build](https://github.com/jesusgoku/asdf-jj/actions/workflows/build.yml/badge.svg)](https://github.com/jesusgoku/asdf-jj/actions/workflows/build.yml) [![Lint](https://github.com/jesusgoku/asdf-jj/actions/workflows/lint.yml/badge.svg)](https://github.com/jesusgoku/asdf-jj/actions/workflows/lint.yml)

[jj](https://github.com/jj-vcs/jj) plugin for the [asdf version manager](https://asdf-vm.com).

</div>

# Contents

- [Dependencies](#dependencies)
- [Install](#install)
- [Contributing](#contributing)
- [License](#license)

# Dependencies

**TODO: adapt this section**

- `bash`, `curl`, `tar`, and [POSIX utilities](https://pubs.opengroup.org/onlinepubs/9699919799/idx/utilities.html).
- `SOME_ENV_VAR`: set this environment variable in your shell config to load the correct version of tool x.

# Install

Plugin:

```shell
asdf plugin add jj
# or
asdf plugin add jj https://github.com/jesusgoku/asdf-jj.git
```

jj:

```shell
# Show all installable versions
asdf list-all jj

# Install specific version
asdf install jj latest

# Set a version globally (on your ~/.tool-versions file)
asdf global jj latest

# Now jj commands are available
jj --help
```

Check [asdf](https://github.com/asdf-vm/asdf) readme for more instructions on how to
install & manage versions.

# Contributing

Contributions of any kind welcome! See the [contributing guide](contributing.md).

[Thanks goes to these contributors](https://github.com/jesusgoku/asdf-jj/graphs/contributors)!

# License

See [LICENSE](LICENSE) © [Jesús Urrutia](https://github.com/jesusgoku/)
