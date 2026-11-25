cask "agentero" do
  version "0.18.3"

  on_macos do
    on_arm do
      sha256 "b615c42a9bdf16c984034a2a660513583d94a9eb93e9f269641b80350df56fc0"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "226eba5f7f23e4658d8bba1a0cdae8c44446b8320605af59dce40ecb87af52fa"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "0563ed1338e50d0ea5e9d36261a96338cc848da86771de4408de8ae2d37bacb8"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
