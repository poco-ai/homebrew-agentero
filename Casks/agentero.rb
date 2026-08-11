cask "agentero" do
  version "0.5.4"

  on_macos do
    on_arm do
      sha256 "0205572f4ee5a552e88084735f11d7fa3c2928bc87e4a004c50586006c167690"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "cc6e976a95dd07c7b940738274577731e5ff4d6b1abfda873572f0ebc5812657"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "532dbfd28eb71fb00bd543fa1a144cf23b182e1594e3fcff05b42e4e0a7471ab"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
