let
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/340b6780b851bfb93892c8c1819a59d7f1c7ca1a.tar.gz";
    sha256 = "0000000000000000000000000000000000000000000000000000";
  };
  pkgs = import nixpkgs {};
in 

{

  test2 = pkgs.runCommandNoCC "test2" {} ''
    sleep 5
    cp ${./number} $out
  '';

}
