class Event < ActiveRecord::Base
  belongs_to :users

  # def bark
  #   puts "woof"
  # end
end