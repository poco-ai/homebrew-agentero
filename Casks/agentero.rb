cask "agentero" do
  version "0.2.4"

  on_macos do
    on_arm do
      sha256 "06ee3635cd41b8cfc2f0bbc343491334fbde53429ca54c6e0974e03a1f67d8f2"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "63e3d3448c4544797a54bfd282254a1e9925549a4c79e84c07b03f5e4bd0ec2a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "bdd9ff61a0edc9d7cb24da9cf417add886c9043970f6416bf9ec302128d6d8ed"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
