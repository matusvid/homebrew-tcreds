class Tcreds < Formula
    desc "A tool to manage Terraform credentials"
    homepage "https://github.com/matusvid/tcreds"
    url "https://github.com/matusvid/tcreds/archive/refs/tags/alpha-1.0.0.tar.gz"
    sha256 "f792a7941a1fb50abc5cfdc058ee68c23d585696f7ebc581799b62242a3696a8"
  
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
  