cask "agentero" do
  version "0.7.2"

  on_macos do
    on_arm do
      sha256 "f52b68ca54583ac2b46fbff6769674ac24c88a4b573f77d577f28678554f37c4"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "43a6c971ed5863b1fccaffb8b8bf82042ee2781738a61aed3db97b82ed34b1cc"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "a24579b377bd3c090705a6a00e705ff1c6244cc6a4c80f1c0ea2804b4ee3979a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
