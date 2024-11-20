# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Sol < Formula
  desc "Sol is a command line application that allows you to chat with your git history."
  homepage "https://github.com/ludovicianul/sol"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.3/sol_macos_amd64_1.0.3.tar.gz"
        sha256 "7a0c2cdf6e8fc4f528cd4817c852aacc28ef0354480ed1cd525b25e9b58d32c1"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.3/sol_macos_arm64_1.0.3.tar.gz"
        sha256 "2c8b2a6d0fe3eaaf374dcaa87892a85fafa164fd788b661725756393f4dcf740"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.3/sol_linux_amd64_1.0.3.tar.gz"
        sha256 "05b17f607d9522f22395d58881b6965209ac1e3aaae32e628d515faf1e83e40e"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/sol/releases/download/sol-1.0.3/sol_linux_arm64_1.0.3.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/sol/releases/download/sol-1.0.3/sol_uberjar_1.0.3.tar.gz"
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
