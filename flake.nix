{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: {

    hydraJobs.test = nixpkgs.legacyPackages.x86_64-linux.runCommandNoCC "test" {} ''
      sleep 5
      cp ${./number} $out
    '';

  };
}
