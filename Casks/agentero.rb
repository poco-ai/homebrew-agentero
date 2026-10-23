cask "agentero" do
  version "0.13.0"

  on_macos do
    on_arm do
      sha256 "5bb0ff978b375d0a6962df805659f1928105a3e58a408b66d85ecd5a69ad84b3"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "cd6ea7935f52abadc8df34ba7653aa6d56d41545265cd3defd6fcca650ccac79"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "51886748e3c7252f32182505699c3ea99ea483ba24fe559c126d24b402c5a7e1"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
