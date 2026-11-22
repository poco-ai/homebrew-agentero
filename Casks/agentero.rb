cask "agentero" do
  version "0.18.0"

  on_macos do
    on_arm do
      sha256 "bdb85b10689dc9a38c7ac4b5e09b30ba87adf8cbb01e25be5b1b061686c15095"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "bf8ddfef22bf432445120d4d909b5a36e134f77fffc10d1af99fba53478ae37f"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "cf229392801d0b4981b5a0854bb5088fd66df281fc68680be3e6e52fd48ce5f7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
