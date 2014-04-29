require 'SecureRandom'

def charsets
  charset_lower_alpha = %w{ a b c d e f g h i j k l m n o p q r s t u v w x y z }
  charset_upper_alpha = %w{ A C D E F G H I J K L M N O P Q R S T U V W X Y Z }
  charset_numeric = %w{ 0 1 2 3 4 5 6 7 8 9 }
  charset_specials = %w{ ! @ £ $ % & ? + - _ # * = }
  charset_complete = charset_lower_alpha + charset_upper_alpha + charset_numeric + charset_specials
end

def random_uuid
  SecureRandom.uuid
end

def random_pass(length=64)
  (0...length).map{ charsets.to_a[rand(charsets.length)] }.join
end

def url_product_verification(length=64)
  SecureRandom.urlsafe_base64(length)
end

puts 'Random Key: ' + random_pass

puts 'Random UUID: ' + random_uuid

puts 'Verify Product URL: www.meditag.com/verify/id/' + url_product_verification

