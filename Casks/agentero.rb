cask "agentero" do
  version "0.10.1"

  on_macos do
    on_arm do
      sha256 "bc96368aaabc40592b56615ac5074d05fd5ad7fdbe87f9c60d855936b91e0e5a"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "238f7a74f6805ba0ffe8437ffdeb9ebe885e931d70100d0e12ea05246b4c838c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "9706f260bfb1f716a28388231be91525893219e8a919605be801a1569500b8db"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
