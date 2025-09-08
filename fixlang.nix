{
  rustPlatform,
  fetchFromGitHub,
  pkg-config,
  libffi,
  libtinfo,
  libxml2,
  git,
  openssl,
  llvmPackages_17,
}:
rustPlatform.buildRustPackage rec {
  pname = "fixlang";
  version = "v1.1.0";
  src = fetchFromGitHub {
    owner = "tttmmmyyyy";
    repo = pname;
    tag = version;
    leaveDotGit = true;
    sha256 = "sha256-jTlf4UD+MrHJJ8qdAnwLhKOemtvLsBeL77iJ5ef7bNo=";
  };
  cargoHash = "sha256-EGs/eq8SgGGT29Ch9xrTnbK3tAkCKplVvnkEFxVJajA=";
  nativeBuildInputs = [
    git
    pkg-config
    llvmPackages_17.libllvm
  ];
  propagatedBuildInputs = [
    libffi
    libtinfo
    libxml2
  ];
  buildInputs = [ openssl ];
  doCheck = false;
}
