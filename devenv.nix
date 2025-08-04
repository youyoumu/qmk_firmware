{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:
let
  pkgs-unstable = import inputs.nixpkgs-unstable { system = pkgs.stdenv.system; };
in
{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.git
    pkgs.pkgsCross.avr.buildPackages.gcc
    pkgs-unstable.avrdude
  ];

  enterShell = ''
    fish && exit
  '';

  languages.python = {
    enable = true;
    venv.enable = true;
    venv.requirements = lib.readFile ./requirements.txt;
  };
}
