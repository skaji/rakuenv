# rakuenv

Raku Environment Manager

![](https://user-images.githubusercontent.com/1589550/103409907-46402880-4bac-11eb-9ccf-183c213916be.png)

## Install

1. Clone rakuenv into `~/.rakuenv`.

    ```console
    ❯ git clone https://github.com/skaji/rakuenv ~/.rakuenv
    ```

2. Add `~/.rakuenv/bin` to your `$PATH`.

    ```sh
    # bash
    ❯ echo 'export PATH="$HOME/.rakuenv/bin:$PATH"' >> ~/.bash_profile
    # zsh
    ❯ echo 'export PATH="$HOME/.rakuenv/bin:$PATH"' >> ~/.zshrc
    # fish
    ❯ set -Ux fish_user_paths $HOME/.rakuenv/bin $fish_user_paths
    ```

3. Add `rakuenv init` to your shell to enable shims and autocompletion.

    ```sh
    # bash
    ❯ echo 'eval "$(rakuenv init -)"' >> ~/.bash_profile
    ```

   Please change `~/.bash_profile` as in step 2.

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.)

## Usage

```console
❯ rakuenv install --list
2020.12-01
2020.11-01
2020.10-01
2020.09-01
2020.08.2-01
2020.08.1-01
2020.07-01
2020.06-01
2020.05.1-01
2020.02.1-01
2020.01-01
2019.11-01

❯ rakuenv install 2020.12-01
Downloading https://rakudo.org/dl/rakudo/rakudo-moar-2020.12-01-macos-x86_64-clang.tar.gz
Extracting /Users/skaji/.rakuenv/cache/rakudo-moar-2020.12-01-macos-x86_64-clang.tar.gz
Successfully installed 2020.12-01
You may want to execute 'rakuenv global 2020.12-01'

❯ rakuenv global 2020.12-01

❯ raku -v
Welcome to Rakudo(tm) v2020.12.
Implementing the Raku(tm) programming language v6.d.
Built on MoarVM version 2020.12.
```

## License

rakuenv is a fork of https://github.com/rbenv/rbenv;
you can redistribute rakuenv and/or modify it under the same terms as rbenv itself.

See [LICENSE](LICENSE) for rbenv's license.
