cask "agentero" do
  version "0.11.8"

  on_macos do
    on_arm do
      sha256 "5416c1c1dcb3331a374a0694eff742071505b5353dd893f4d3906004a695abdf"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "c9858cf8095cfdfedd3ad94fcd3717d6df9025c1a0abcc512ef580db7621ee2e"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "2f56403033d109c972a28d768db2e48d5b85e23e3c9988f0c7f9f5bfd6c507cc"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
