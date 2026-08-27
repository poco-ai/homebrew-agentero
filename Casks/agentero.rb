cask "agentero" do
  version "0.9.0"

  on_macos do
    on_arm do
      sha256 "7bac52bee8296358c92c4503be133b43921179a1eaf4084b1d83016912d4df61"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "5ee2cd89c755359d685d25c7d3a440e9585bc8d506c1f3238807664222dd02d3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "1d58fdf6b07b4ee1618a84bd0e0fd2f3725f44f6cd635716f2a377689b28cda1"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
