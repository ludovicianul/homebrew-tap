# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Dvt < Formula
  desc "DeV Tools - Swiss Army Knife of command line utilities"
  homepage "https://github.com/ludovicianul/dvt"

  if OS.mac?
        if Hardware::CPU.intel?
          url "https://github.com/ludovicianul/dvt/releases/download/dvt-1.2.1/dvt_macos_amd64_1.2.1.tar.gz"
          sha256 ""
        elsif Hardware::CPU.arm?
          url "https://github.com/ludovicianul/dvt/releases/download/dvt-1.2.1/dvt_macos_arm64_1.2.1.tar.gz"
          sha256 "fbf0dcb3009c9d1926fd6b76b4dd8cc25d39e1ee1180e3f361415a4c8b02466a"
        end
    elsif OS.linux?
        if Hardware::CPU.intel?
          url "https://github.com/ludovicianul/dvt/releases/download/dvt-1.2.1/dvt_linux_amd64_1.2.1.tar.gz"
          sha256 "07e0144b3c45381b3052b116b490b435f3cf1436d8e2cf2679987413316c9924"
        elsif Hardware::CPU.arm?
          url "https://github.com/ludovicianul/dvt/releases/download/dvt-1.2.1/dvt_linux_arm64_1.2.1.tar.gz"
          sha256 "0a2208da2404e4a80211888970c64b469ab2bf832e3133980a7c5d33dc39ca97"
        end
    else
      odie "Please use the uberjar version: https://github.com/ludovicianul/dvt/releases/download/dvt-1.2.1/dvt_uberjar_1.2.1.tar.gz"
  end

  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install 'dvt'
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test dvt`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
