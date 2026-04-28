# typed: true

# Try to use "Go to Definition" on `Foo`.
# That opens a non-existent `foo.rb` while it should be `lib/foo.rb`.
class Bar < Foo
  def print
    puts "bar"
  end
end
