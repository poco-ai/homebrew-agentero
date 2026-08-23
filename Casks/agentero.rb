cask "agentero" do
  version "0.8.0"

  on_macos do
    on_arm do
      sha256 "e8cda05989d749eca414c91c11bc0fdf43802562ff7631a34754b95e70d26e65"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "6db82bcaf4f1d35c76555f74cb46f185c4abfeadfaa009fd14a60c3aa9f77845"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "d8ee8792cbff765ac87ab17ea3d19c3854fd42a7e9c00560dfbc3f8dcb97ff5a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
