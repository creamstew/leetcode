# 分からなかった。悔しい。。。

MAPPING = {
    '(' => ')',
    '{' => '}',
    '[' => ']'
  }.freeze
  
  def is_valid(s)
    stack = []
    
    s.each_char do |char|
      if MAPPING.key?(char)
        stack << MAPPING[char]
      else
        current_open = stack.pop
        return false unless char == current_open
      end
    end
    
    stack.empty?
  end