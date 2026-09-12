cask "agentero" do
  version "0.10.2"

  on_macos do
    on_arm do
      sha256 "e29b72eed35d64d845e9251be3f05daf06d4fce4d015f951ee67ab6835cfe95c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "f49c15231362978a6d9a27ada0072530ce948029c03a5ac791063a68bc2a9360"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "1c344ba878b6ee156a441a2860350270b32b2d46be370c3de82e78616cd1a1d8"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
