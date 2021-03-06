module Validate
  def self.get_valid_rules
    puts "\nWell that wasn't much of an answer!".red_highlight
    puts "Please answer '#{"yes".bold.underline}' to see the rules or '#{"no".bold.underline}' to start the game!"

    show_rules = gets.chomp.downcase
    if show_rules == "yes" || show_rules == "y"
      puts Rules.rules
    elsif show_rules == "no" || show_rules == "n"
      puts "\nLet's get started!"
    else
      self.get_valid_rules
    end
  end

  def self.get_valid_coder_breaker
    puts "\nHmmmmmm... Nope that doesn't make any sense!".red_highlight
    puts \
      "Please answer with: #{"coder".bold.underline}(c) or #{"breaker".bold.underline}(b)" \
      "\nThe coder #{"makes".italic} the code to be broken while the breaker tries to #{"break".italic} the code!"
    coder_or_breaker?
  end

  def self.get_valid_code_length
    puts "\nSorry! That didn't make any sense!".red_highlight
    puts "Please chose how many colors the code should be generated with."
    puts "Answer with #{bold_numbers(4, 7)}"

    get_code_length
  end

  def self.get_valid_possible_colors
    puts "\nError! Cannot compute!".red_highlight
    puts "Please select how many possible colors should be included: #{bold_numbers(6, 7)}"

    get_possible_colors
  end

  def self.get_valid_user_code
    puts "\nAlrighty, That code wasn't quite valid!".red_highlight
    puts "Please create a code with 4-8 letters, each corresponding with a color"

    get_user_code
  end

  def self.bold_numbers(range_start, range_end)
    "#{(range_start..range_end).map{ | number| "'#{number.to_s.bold}'"}.join(", ")} or '#{"8".bold}'."
  end

  def get_valid_colors
    puts "\nWoah woah woah! Those are not the right colors! Lets try that again".red_highlight
    puts "Please enter #{code_length} letters, each corresponding with a color"
    puts "For example, you could guess: '#{(1..code_length).map { COLORS[rand(8)] }.join("")}'"

    self.get_guess
  end
end
