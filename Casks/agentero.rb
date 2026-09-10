cask "agentero" do
  version "0.9.7"

  on_macos do
    on_arm do
      sha256 "bcc5e01c186cd1d89589767807a49a977595e907e16e9534f79647641472c9d7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "02a9a5031e7d8915835cb101a65ff5eda5f4dfcee7978c15a8e7cdfa05f08963"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "05ae0b9e4ab55edcdb4bb1c30bfc26bd55ca558b74aec0a2890f1c7f0cc6608b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
