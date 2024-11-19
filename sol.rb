# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sol < Formula
  desc "Sol is a command line application that allows you to chat with your git history."
  homepage "https://github.com/ludovicianul/sol"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.2/sol_macos_amd64_1.0.2.tar.gz"
        sha256 "902158d7c75e53c39718c1603b1c5ba6a4d1aeeade11642c8b7dee6d1011bdbb"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.2/sol_macos_arm64_1.0.2.tar.gz"
        sha256 "f9afb95df58974431310ed03aacbc2351d34813fbaa68c94c6dc0af516017f9b"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.2/sol_linux_amd64_1.0.2.tar.gz"
        sha256 "d56cadccfe29d17df6cb4c4a4975633d936f54b0f9fa209175cd9869facd5ce5"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.2/sol_linux_arm64_1.0.2.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/sol/releases/download/sol-1.0.2/sol_uberjar_1.0.2.tar.gz"
  end

  license "Apache-2.0"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'sol'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test sol`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
