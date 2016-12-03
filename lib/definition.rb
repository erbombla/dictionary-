class Definition
end 
#   @@words = []
#   attr_reader(:word, :pOs)
#
# #---Class Initialization---
#   def initialize(attributes)
#     @word = attributes[:word]
#     @pOs = attributes[:pOs]
#     @id = @@words.length + 1
#     # @definitions = []
#   end
#
# #----Class Methods---
#   def save
#     @@words.push(self)
#   end
#
#   def self.all
#     @@words
#   end
#
#   def self.clear
#     @@words =[]
#   end
#
# #----Find Methods----
#   def id
#     @id
#   end
#
#   define_singleton_method (:find) do |identification|
#     found_word = nil
#     @@words.each() do |word|
#       if word.id() == identification
#         found_word = word
#       end
#     end
#     found_word
#   end
#
# end
# #----Definition Methods----
#
# # def addDefinition(definition)
# #   @definitions.push(definition)
# # end
# #
# # def definitions
# #   @definitions
# # end
