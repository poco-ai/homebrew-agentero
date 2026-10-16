cask "agentero" do
  version "0.11.9"

  on_macos do
    on_arm do
      sha256 "f3b262284b478ee1f42ddcda339e8ef616013e477caebb3ebc27cbe4608b8dc9"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "5e24396b6f9fc16279fc8669ff40848ea6d0eca90287c756c8e93ea25dc2fe15"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "99fb6e04050146de19154af88022a871538dd808355e2a70218e954d54767b8c"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
