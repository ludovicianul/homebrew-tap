# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Timi < Formula
  desc "Timi is a command line application that allows you to chat with your git history."
  homepage "https://github.com/ludovicianul/timi"

  if OS.mac?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.8/timi_macos-15_amd64_1.0.8.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.8/timi_macos_arm64_1.0.8.tar.gz"
        sha256 "bf1ba9fdaac3fff085ce11297d405dafbb825de6834d09d35b78e53faa8adf10"
      end
  elsif OS.linux?
      if Hardware::CPU.intel?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.8/timi_linux_amd64_1.0.8.tar.gz"
        sha256 "bfb8853ae1f50371ed6e4e9988a0228a13bcc1f694006bab883f68d68cfe15e6"
      elsif Hardware::CPU.arm?
        url "https://github.com/ludovicianul/timi/releases/download/timi-1.0.8/timi_linux_arm64_1.0.8.tar.gz"
        sha256 "1de4c1b873cab5ac6d19e1fdb7ce4287da25b961276884d17190a8ef49047ff9"
      end
  else
    odie "Please use the uberjar version: https://github.com/ludovicianul/timi/releases/download/timi-1.0.8/timi_uberjar_1.0.8.tar.gz"
  end

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'timi'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test timi`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
