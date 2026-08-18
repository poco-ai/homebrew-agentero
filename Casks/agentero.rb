cask "agentero" do
  version "0.6.3"

  on_macos do
    on_arm do
      sha256 "88a80a7e45c6c8d86c36cc82ceeae8be781d79804626b4003744fe10c145ce01"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "1b2a774dc86e2bc75fa271cc2ba0170f3acead3956310d62d4dad1f139891073"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "960cca7847e0a55f30427fee7ca96b0fa0e58f906bbeb133ab4a3580c69dce91"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
