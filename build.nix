let
  nixpkgs = fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/340b6780b851bfb93892c8c1819a59d7f1c7ca1a.tar.gz";
    sha256 = "0mm5i7g95bk70nfblm8aa0vsz7lddlg1z61zp2kdbm3k6vqym76y";
  };
  pkgs = import nixpkgs {};
in 

{

  test2 = pkgs.runCommandNoCC "test2" {} ''
    sleep 5
    cp ${./number} $out
  '';

}
