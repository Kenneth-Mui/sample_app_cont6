class String
  def shuffle
  	self.split('').shuffle.join  #The ".shuffle" and the ".join" command are inherited from the String class and therefore can be used here. We can use the "self" command so that its referring to whatever that's dotted. Ex: "Kenneth".shuffle can now be a command that is used.
  end
end

class User
  attr_accessor :name, :email #This is a very shortened way of making the keys for a hash.

  def initialize(attributes = {}) #This is saying make an empty hash named "attributes"
    @name  = attributes[:name]  #This stores the key called, ":name" as an instance variable.
    @email = attributes[:email] #This stores the key called, ":email" as an instance variable.
  end

  def formatted_email
    "#{@name} <#{@email}>"  #This is string interpolation to pull out information from a hash.
  end

end

#This is an example of how to write a nested hash. A hash within a hash.
params = {} #You create an empty hash first
params[:father] = {first: "Norman", last: "Mui"} #You set the key value to another hash
params[:mother] = {first: "Anita", last: "Mui"}
params[:child] = {first: "Kenneth", last: "Mui"}

#Ex: Now one can recall the first name of the child by doing "params[:child][:first]"
