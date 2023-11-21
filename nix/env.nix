{ pkgs, packages }:
with packages;
{
  system = [
    coreutils
    gnugrep
    gnused
  ];

  dev = [
    pls
    git
  ];

  main = [
    docker
    infisical
  ];

  lint = [
    # core
    treefmt
    hadolint
    gitlint
    shellcheck
    sg
  ];

  releaser = [
    nodejs
    sg
  ];

}
