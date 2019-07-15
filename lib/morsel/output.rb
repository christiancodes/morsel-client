require 'colorize'

class Output

  def self.title
    morsel_col = random_colour
    wolf_col   = random_colour
    m3lon_col  = random_colour

    puts "wolfOS".colorize(wolf_col) + " & " + "m3lon.com".colorize(m3lon_col) + " present:"
    puts "                               _ ".colorize(morsel_col) + "\n"
    puts " _ __ ___   ___  _ __ ___  ___| |".colorize(morsel_col) + "\n"
    puts "| '_ ` _ \\ / _ \\| '__/ __|/ _ \\ |".colorize(morsel_col) + "\n"
    puts "| | | | | | (_) | |  \\__ \\  __/ |".colorize(morsel_col) + "\n"
    puts "|_| |_| |_|\\___/|_|  |___/\\___|_|".colorize(morsel_col) + "\n"
    puts "                 Kitchen Thoughts\n".colorize(morsel_col)
    puts "Hash out some ideas... in the kitchen.\n\n"
  end

  def self.clear
    system("clear")
  end

  def self.api_down
    puts "\nAPI cannot be reached. Check your connection and try again."
  end

  def self.exiting
    puts "Exiting...\n"
  end

  def self.press_any_key
    puts "\nPRESS ANY KEY\n".colorize( random_colour )
  end

  def self.type_something
    puts "Ready. Type 'exit' or 'quit' to stop.\n\n".colorize(random_colour)
  end

  def self.save_successful
    puts "✓\n"
  end

  def self.print_error(error)
    puts "An error occurred: #{error}\n"
  end

  private

    # borrowed from ActionView
    def self.word_wrap(text, line_width: 80, break_sequence: "\n")
      text.split("\n").collect! do |line|
        line.length > line_width ? line.gsub(/(.{1,#{line_width}})(\s+|$)/, "\\1#{break_sequence}").strip : line
      end * break_sequence
    end

    def self.random_colour
      colours = [:red, :light_red, :green, :light_green, :yellow, :light_yellow, :light_blue, :magenta, :light_magenta, :cyan, :light_cyan]
      colours[ Random.new.rand(colours.length) ]
    end

end