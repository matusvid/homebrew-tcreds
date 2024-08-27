class Tcreds < Formula
    desc "A tool to manage Terraform credentials"
    homepage "https://github.com/matusvid/tcreds"
    
    if OS.mac?
      url "https://github.com/matusvid/tcreds/releases/download/alpha-1.0.3/tcreds-darwin-arm64"
      sha256 "ff2d2643fb41b42da0024f209fcbebfe030a1e35082d2dc68195b32fcb0ce71d"
    elsif OS.linux?
      url "https://github.com/matusvid/tcreds/releases/download/alpha-1.0.3/tcreds-linux-amd64"
      sha256 "feb090d11a84e3b47f15f5668f48a086134797cf57780c4d9fcf060bade51561"
    end
  
    def install
        bin.install "tcreds-darwin-arm64" => "tcreds" if OS.mac?
        bin.install "tcreds-linux-amd64" => "tcreds" if OS.linux?
    end
  
    def caveats
      <<~EOS
        To use tcreds, you may need to ensure that the directory containing the brew binaries is in your PATH:
          echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.zshrc
          source ~/.zshrc
      EOS
    end
  end
  