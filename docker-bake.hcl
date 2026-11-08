target "zsh" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "zsh"
  attest    = ["type=provenance,mode=max", "type=sbom"]
}

target "jj" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "jj"
  attest    = ["type=provenance,mode=max", "type=sbom"]
}

target "uv" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "uv"
  attest    = ["type=provenance,mode=max", "type=sbom"]
}

target "workspace-py" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "workspace-py"
  tags   = ["startown/workspace-py:0.2.0"]
  attest    = ["type=provenance,mode=min", "type=sbom"]
}
