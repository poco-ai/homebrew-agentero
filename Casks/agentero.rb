cask "agentero" do
  version "0.5.5"

  on_macos do
    on_arm do
      sha256 "9310d1b2cb953ccc021c9ee175ada788f8ef981a5c183490e3a8336956846b1b"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "b09f27228217591e971f1e5759b69480fc0f6554ba26d978c28418f59b7e88f6"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "417250f2e575425f79f4a0d2159dfb5f314815ab019c74151268f10e716387d2"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
