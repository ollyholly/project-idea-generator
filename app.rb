# S = "love the pomodoro technique data mining ad revenue security hope fear the means of production memes the blockchain the trump administration friendship the internship process renewable energy sources marijuana artificial intelligence next-day shipping piracy live music journalism geolocation metadata learning the emotional spectrum the homosexual agenda virtual reality augmented reality IOT devices neural networks dating the user experience full-stack development full-stack developers anonymity the global market fair trade products fair trade privacy the dark web the inevitable heat death of the universe cats sadness buckets of data user generated content microblogging growth hacking"

APPS = ["mobile app",
        "browser plugin",
        "web app",
        "alexa",
        "plugin",
        "mobile game",
        "chatbot",
        "marketplace",
        "planner",
        "calculator",
      ]
AUDIENCE = ["friends", "students"]
INTENT = ["dating",
          "data mining",
          "organising events",
          "better security",
          "friendship",
          "the internship",
          "renewable energy",
          "artificial intelligence",
          "next-day shipping",
          "live music",
          "journalism",
          "geolocation",
          "learning",
          "the emotional intelligence",
          "mental health",
          "virtual reality",
          "IOT devices",
          "the user experience",
          "saving energy",
          "growth hacking"
]


def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Generate an idea"
  puts "2. Show the app typelist "
  puts "3. Show the app intent list"
  # puts "4. Save the list to content.txt"
  puts "9. Exit"
end

def show_app_type
  print_header
  print_app_type_list
  print_header
end

def show_intent
  print_header
  print_intent_list
  print_header
end

def show_idea
  print_header
  generate_idea
  print_header
end

def generate_idea
  random_app_number = rand(APPS.length)
  random_intent_number = rand(INTENT.length)
  puts "#{APPS[random_app_number]} for #{INTENT[random_intent_number]}"
end

def process(selection)
  case selection
  when "1"
    show_idea
  when "2"
    show_app_type
  when "3"
    show_intent
  # when "4"
  #   save_file
  when "9"
    exit
  else
    puts "I don't know what you meant, try again"
  end
end


def print_header
  puts "-------------"
end

def print_app_type_list
  APPS.each do |app|
    puts app
  end
end

def print_intent_list
  INTENT.each do |purpose|
    puts purpose
  end
end

# def save_file
#   # open the file for writing
#   file = File.open("content.txt", "w")
#   content = S.split(" ").map{ |word| "\"" + word + "\"," }
#   file.puts content
#   file.close  
# end

interactive_menu