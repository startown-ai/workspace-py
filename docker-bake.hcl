target "zsh" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "zsh"
  tags      = ["startown/zsh:5.9-1"]
  attest    = ["type=provenance,mode=max", "type=sbom"]
}

target "jj" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "jj"
  tags      = ["startown/jj:0.47.1-1"]
  attest    = ["type=provenance,mode=max", "type=sbom"]
}

target "uv" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "uv"
  tags      = ["startown/uv:0.13.7-1"]
  attest    = ["type=provenance,mode=max", "type=sbom"]
}

target "workspace-py" {
  platforms = ["linux/amd64", "linux/arm64"]
  context   = "workspace-py"
  tags      = ["startown/workspace-py:0.3.0"]
  attest    = ["type=provenance,mode=min", "type=sbom"]
}
