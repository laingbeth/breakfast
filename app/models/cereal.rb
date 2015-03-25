class Cereal < ActiveRecord::Base
  def initialize name
    @name = name
  end
end
