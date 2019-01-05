# p6env

Perl6 Environment Manager

![](https://user-images.githubusercontent.com/1589550/50726496-56ee6d00-1151-11e9-97e9-26e50f03108b.png)

## Install

**Note**: If you are familiar with *env* family such as rbenv or plenv,
then you can safely skip this description.

1. Clone p6env into `~/.p6env`.

    ~~~ sh
    git clone https://github.com/skaji/p6env ~/.p6env
    ~~~

2. Add `~/.p6env/bin` to your `$PATH`.

   * For **bash**:
     ~~~ bash
     $ echo 'export PATH="$HOME/.p6env/bin:$PATH"' >> ~/.bash_profile
     ~~~

   * For **Ubuntu Desktop**:
     ~~~ bash
     $ echo 'export PATH="$HOME/.p6env/bin:$PATH"' >> ~/.bashrc
     ~~~

   * For **Zsh**:
     ~~~ zsh
     $ echo 'export PATH="$HOME/.p6env/bin:$PATH"' >> ~/.zshrc
     ~~~

   * For **Fish shell**:
     ~~~ fish
     $ set -Ux fish_user_paths $HOME/.p6env/bin $fish_user_paths
     ~~~

3. Add `p6env init` to your shell to enable shims and autocompletion.

   ~~~ sh
   $ echo 'eval "$(p6env init -)"' >> ~/.bash_profile
   ~~~

   Please change `~/.bash_profile` as in step 2.

4. Restart your shell so that PATH changes take effect. (Opening a new
   terminal tab will usually do it.)

5. Install [perl6-build](https://github.com/skaji/perl6-build),  which provides the
   `p6env install` command that simplifies the process of
   installing new Perl6 versions.

   ~~~ sh
   $ git clone https://github.com/skaji/perl6-build ~/.p6env/plugins/perl6-build
   ~~~

## Usage

~~~ sh
$ p6env install -l

$ p6env install rakudo-star-2018.10

$ p6env versions

$ p6env global rakudo-star-2018.10

$ perl6 -v
This is Rakudo Star version 2018.10 built on MoarVM version 2018.10
implementing Perl 6.c.

$ p6env install-zef
~~~

## License

p6env is a fork of https://github.com/rbenv/rbenv;
you can redistribute it and/or modify it under the same terms as rbenv itself.

See [LICENSE](LICENSE) for rbenv's license.
