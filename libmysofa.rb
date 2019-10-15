class Libmysofa < Formula
  desc "Library for reading AES SOFA files"
  homepage "https://github.com/hoene/libmysofa"
  url "https://github.com/hoene/libmysofa/archive/v0.8.tar.gz"
  sha256 "0e0abb6ec6f5f09266325741d6ef218532187129f65d0bc6b21e155760dfb2ad"
  head "https://github.com/hoene/libmysofa.git"

  depends_on "cmake" => :build

  depends_on "cunit"

  def install
    cd "build" do
      system "cmake", "..", *std_cmake_args, "-DCMAKE_BUILD_TYPE=Debug"
      system "make", "all"
      system "make", "install"
    end
  end
end
