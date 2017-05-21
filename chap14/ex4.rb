$indent_length = 0
def log (block_description, &block)
indent = " "*$indent_length
puts indent + "Beginning '#{block_description}'..."
$indent_length = $indent_length + 1
outcome = block.call
$indent_length = $indent_length - 1
puts indent + "...'#{block_description}' finished, returning: " + outcome.to_s
end

log 'outer block' do
    log 'some little block' do
        log 'teeny-tiny block' do
        "lots of love"
    end
    21*2
end
    log 'yet another block' do
        "I love Indian food."
    end
    4 < 5
end
