cask "agentero" do
  version "0.11.4"

  on_macos do
    on_arm do
      sha256 "b208f98e8298bf34bc9c045ca114c314d9ffb70aa428c6ea5de2d09c00def5c3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "701f04dca3c828e00882b5807f7042be3a1373df8b4c1774fd14d1c5afd92ba9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "5a4d3d4cd5635f69b144195643a6c33c8173721c2ea8273e7e6628a0128c4650"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
