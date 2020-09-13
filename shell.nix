{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python37
    python37Packages.pytest
    python37Packages.mypy
    python37Packages.pyyaml
    python37Packages.flake8

    emacs26
    emacs26Packages.org-plus-contrib
  ];
}
