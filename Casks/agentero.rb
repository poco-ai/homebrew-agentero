cask "agentero" do
  version "0.11.7"

  on_macos do
    on_arm do
      sha256 "42f30d36c451803ab56a90402d13e8cd525f0f7ae2040b8709ff45f1d9cfd52b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "92fb17a1fa6efa111812d22a97153210642b6df269109bd0e65ffc3d9df443ef"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "4f6d24fd8dca3ecafc5b7a7623dbc9bad076ec17b9e5e78f608f35c829ab3ad9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
