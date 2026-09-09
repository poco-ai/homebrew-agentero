cask "agentero" do
  version "0.9.7"

  on_macos do
    on_arm do
      sha256 "f6cec9d3e6062e663e0f32d3a7c69bf2fd56059ad60916f6579ced789008ea43"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "3974272130a904aac21a899e7ae04f50efcb58e3f8418542d48cdd85ecb458f9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "492dfece03231d0c33a2dd29f32d66dad75fc37c419ff3565bb6224034f8d2b8"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
