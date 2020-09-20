{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    python37
    python37Packages.pytest
    python37Packages.pytestcov
    python37Packages.coveralls
    python37Packages.mypy
    python37Packages.pyyaml
    python37Packages.flake8
    python37Packages.docutils

    emacs26
    emacs26Packages.org-plus-contrib
  ];
}
