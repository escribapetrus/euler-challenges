defmodule LargestPalindromeTest do
  use ExUnit.Case
  import Challenges.LargestPalindromeProduct

  test "test whether a number is a palindrome" do
    assert palindrome? 10000001
    assert palindrome? 123321
    assert palindrome? 18887778881
  end

  test "reverse a number" do
    assert reverse(123456) == 654321
    assert reverse(10001) == 10001
  end

  test "get largest palindrome of n-digit numbers" do
    assert get(11..99) == 9009
    assert get(111..999) == 906609
  end

end
