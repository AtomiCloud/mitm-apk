{ pkgs, atomi, atomi_classic, pkgs-2305, pkgs-nov-21-23 }:
let
  all = {
    atomipkgs_classic = (
      with atomi_classic;
      {
        inherit
          sg;
      }
    );
    atomipkgs = (
      with atomi;
      {
        inherit
          infisical
          pls;
      }
    );
    nix-2305 = (
      with pkgs-2305;
      {
        inherit
          hadolint;
      }
    );
    nov-21-23 = (
      with pkgs-nov-21-23;
      {
        inherit
          coreutils
          bash
          git
          gnused
          gnugrep

          # lint
          treefmt
          gitlint
          shellcheck
          docker;
        nodejs = nodejs_20;
      }

    );
  };
in
with all;
atomipkgs //
atomipkgs_classic //
nix-2305 //
nov-21-23
