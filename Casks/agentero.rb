cask "agentero" do
  version "0.9.3"

  on_macos do
    on_arm do
      sha256 "db065995ad918ee31ed8aedf17a03cd2ab4e7f6adf2e07ff314627c3122ee33f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "19f036fbd3bae848cc2ccb8780f2f97e8dd05f42fc662b3e1f2a270f993b299c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "cb9dad06bf7813b4e754e1821d8873a0438a798c13fb11187090e6c6ce105f60"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
