cask "agentero" do
  version "0.11.5"

  on_macos do
    on_arm do
      sha256 "c0bec3739fd8aedadc90b5e3888a09f9bdd1e6c54df4c3fc194337324ba3a81b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "7c00485c5e0fced231aa71f86cc3047ec7ab257161686b08486a870c4f874b80"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "7031b5d1bd1369de5f9ed5400ad36619988939d0dfb771f135f76967e25870f1"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
