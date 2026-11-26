cask "agentero" do
  version "0.18.4"

  on_macos do
    on_arm do
      sha256 "26648f3289718e29e7249552ef802b42ef01be3e7ea627742373a4adef04f05c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "aca80d7ad284319bff65493f374f68ea5f78aa7d93b9f40573bae456d4ca351f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "f2896ba5c22837c85c2b93606b1a3044032f096c8f98e7b8d399fdcb4d52f2ef"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
