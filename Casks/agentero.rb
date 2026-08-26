cask "agentero" do
  version "0.8.2"

  on_macos do
    on_arm do
      sha256 "e8f05aeb21e62407496bf490888586152176959dcd888aabf8110a1814efd450"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "59203dcdf895340abecaf9fc5cb6dac8cd78eacf89f0b5fc41d1bc3e832efc35"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "699a908152c8db5524d1f357a0ffb43193f2384456e0fd7145161661e9fe09f5"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
