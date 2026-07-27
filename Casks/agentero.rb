cask "agentero" do
  version "0.2.2"

  on_macos do
    on_arm do
      sha256 "c7213c11420e155146494e338a0546b7c11b9c3b276e001e69cafa95af46bd8e"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "70685b4e5ef393b09abf5d6b2e502f4fc0b44cdb48d890359e278fdfc2f7c8fd"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "54dc3eaae434f40962a3f45af9102c281066bf51d8b657b0c6f3fbb5309d4471"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
