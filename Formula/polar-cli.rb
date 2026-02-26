class PolarCli < Formula
  desc "CLI for Polar — manage products, customers, and webhooks from the terminal"
  homepage "https://github.com/berkantay/polar-cli"
  url "https://files.pythonhosted.org/packages/79/b1/a305206f0d73e08c6a3d891535f142371767c6d02ef28e84ab341c3cc626/polar_cli-1.0.0.tar.gz"
  sha256 "214d5beb7a285db33a451ad207664e116a8c379aee16e5608f7ede743c3f7620"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install "polar-cli==1.0.0"
    bin.install_symlink libexec/"bin/polar"
  end

  test do
    assert_match "polar", shell_output("#{bin}/polar --help")
  end
end
