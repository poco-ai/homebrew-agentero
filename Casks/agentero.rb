cask "agentero" do
  version "0.1.1"

  # NOTE: The sha256 values below are placeholders. They are overwritten
  # automatically by the release workflow in poco-ai/Agentero. Do not install
  # from this tap until the first release has updated them.

  on_arm do
    sha256 "105acdc8e706a3271ed2bf4f524fe85d99063ab08586032484608bd8283f8dad"
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "PLACEHOLDER_SHA256_X64_DMG"
    url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_x64.dmg"
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
