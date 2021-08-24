{
  pkgs ? (import <nixpkgs> {})
}:

let
  git = "${pkgs.git}/bin/git";
in
pkgs.writeShellScriptBin "gitdot" 
''
  homegit="${git} --git-dir=$HOME/.cfg/ --work-tree=$HOME"
  if [ ! -d $HOME/.cfg ]; then
    ${git} init --bare $HOME/.cfg 
    $homegit config --local status.showUntrackedFiles no 
  fi
  $homegit --git-dir=$HOME/.cfg/ --work-tree=$HOME $@
''

