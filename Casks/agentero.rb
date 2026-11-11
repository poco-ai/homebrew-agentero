cask "agentero" do
  version "0.15.5"

  on_macos do
    on_arm do
      sha256 "a414a8e048baf085c1b2060dbf8a5a1ad56c4467f7a678d2f270885c1c17cb24"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "3938e7bfea65dc22d5ca48d4cc28e4960b1ea69e50104b475ccef73b7fd8278f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "5cf262781f61fa495afae12d298cf2c6070bb47b3bb154b5948f36a08ace7a13"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
