cask "agentero" do
  version "0.4.1"

  on_macos do
    on_arm do
      sha256 "a8bf11d713b89480b6c1cf4c02e39812bf7a595e455bfdc3ff5844a9c442f9ba"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "19e9ec2e71dbcdd0182af36565dd3937aa408269fef3c412748fb2654a694ecf"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "8f91f502976e329d15bde16029e885423426736e0b2aaa8a5fe4094d32ce76ac"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
