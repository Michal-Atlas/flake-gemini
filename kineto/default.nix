{ lib, buildGoModule, fetchgit }:

buildGoModule rec {
  pname = "kineto";
  version = "2021-02-24";

  src = fetchgit {
    url = "https://git.sr.ht/~sircmpwn/kineto";
    rev = "857f8c97ebc5724f4c34931ba497425e7653894e";
    sha256 = "sha256-U9SjIvD0Y9Ydk7pyOS3J5xVsYf1Mwk1j8d6cSEBiJ+Q=";
  };

  vendorHash = "sha256-+CLJJ4najojIE/0gMlhZxb1P7owdY9+cTnRk+UmHogk=";

  meta = with lib; {
    description =
      "HTTP to Gemini proxy designed to provide service for a single domain";
    license = licenses.gpl3;
    maintainers = with maintainers; [ ehmry ];
  };
}
