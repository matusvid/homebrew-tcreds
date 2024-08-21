class Tcreds < Formula
    desc "A tool to manage Terraform credentials"
    homepage "https://github.com/yourusername/tcreds"
    url "https://github.com/yourusername/tcreds/releases/download/v1.0.0/tcreds"
    sha256 "YOUR_BINARY_SHA256"
  
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
  