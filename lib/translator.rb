require "yaml"

def load_library(file_path)
  emoticons = YAML.load_file(file_path) 
    hash = {
      "get_meaning" => {},
      "get_emoticon" => {}
       }
       
    emoticons.each do |key, value|
      hash['get_emoticon'][value[0]] = emoticons[key][1]
      hash['get_meaning'][value[1]] = key
  end 
  hash
end 

def get_japanese_emoticon(file_path, emoticon)
  restult = load_library(file_path)['get_emoticon']
  
end

def get_english_meaning(file_path, emoticon)
  load_library(file_path)
  
end