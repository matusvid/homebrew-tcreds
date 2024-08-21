class Tcreds < Formula
    desc "A tool to manage Terraform credentials"
    homepage "https://github.com/matusvid/tcreds"
    
    if OS.mac?
      url "https://github.com/matusvid/tcreds/releases/download/alpha-1.0.1/tcreds-darwin-arm64"
      sha256 "f496700905e1556cd15c7fc1054cf287472b573ad5f64f0a2521b9eb2e0848aa"
    elsif OS.linux?
      url "https://github.com/matusvid/tcreds/releases/download/alpha-1.0.1/tcreds-linux-amd64"
      sha256 "2cd6c6061faf65eff906aa335e67123c1c87055b74f431542051f59d728906b5"
    end
  
    def install
      bin.install "tcreds"
    end
  
    def caveats
      <<~EOS
        To use tcreds, you may need to ensure that the directory containing the brew binaries is in your PATH:
          echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
          source ~/.zshrc
      EOS
    end
  end
  