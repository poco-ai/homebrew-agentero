cask "agentero" do
  version "0.3.4"

  on_macos do
    on_arm do
      sha256 "5f74114c41da0608851cda6d82b9cf2a96f0c2de0b678b85b651297845b7cc42"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "e07b4c438cbcdddc629503a77b111a6356803a0ffa7122048c373bf5bc244d3a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "36ee01979ef4656822ac0e5209cf345573e6221725d969759bbae070ed4c2de7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
