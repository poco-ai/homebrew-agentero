cask "agentero" do
  version "0.7.1"

  on_macos do
    on_arm do
      sha256 "2b64f141664d0c2b1f5d811c01258088b3c9eabd438b5165837c7b057e5c2ecb"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "7c94263ab9f2d1f7fb21c9ca79b3edd3f96f58a766af2335c4692aaed3b94d17"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "98980644775f66be351cdb37a36d691c6f61e3fbed142a8bc2c07c2ac2410915"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
