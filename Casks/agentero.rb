cask "agentero" do
  version "0.3.2"

  on_macos do
    on_arm do
      sha256 "24e4ecfc36f8594287123d03234d38a417df613ed11e25385d9af4632e210a03"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.dmg"
    end
  end

  on_linux do
    on_arm do
      sha256 "76a551474051f08f3e87a4eec0be3d42ef1a7d5c164b85bf77ab96897e495ff7"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_aarch64.AppImage"
      binary "Agentero_#{version}_aarch64.AppImage", target: "agentero"
    end
    on_intel do
      sha256 "789d46987405c2ec464e4044a37617c179b3998e564ffbc3d62acbffbff9b8f0"
      url "https://github.com/poco-ai/Agentero/releases/download/v#{version}/Agentero_#{version}_amd64.AppImage"
      binary "Agentero_#{version}_amd64.AppImage", target: "agentero"
    end
  end

  name "Agentero"
  desc "Local-first research workbench"
  homepage "https://github.com/poco-ai/Agentero"

  app "Agentero.app"
end
