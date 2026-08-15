cask "agentero" do
  version "0.6.2"

  on_macos do
    on_arm do
      sha256 "0b03ee40a913537a36c1b3884c504b8b3d0f43872be494f50596a60e4bf60d2a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "3b822a2d5bc99cf65219aea1e7dcfc6b0e88d94aa12080b8c7197aaa2b8f291e"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "f5ee28063cc4df6a7a158b1e227da728e704c467a67740483fbf462b7cce9234"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
