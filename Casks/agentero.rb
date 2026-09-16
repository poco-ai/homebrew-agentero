cask "agentero" do
  version "0.11.0"

  on_macos do
    on_arm do
      sha256 "122443f8c3a6dba5d510ec24c64fda845f1207921092f327b76a476bb6881a17"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "afb1f517fbfadfbe7b3d392b5871b9268d264f8ac9d3ad9c7098493ae75c9e3c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "4492a21e890225e2cd503fad928d692cf00e87649961ab4a4636812a104ce8a7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
