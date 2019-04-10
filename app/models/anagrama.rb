class Anagrama < ApplicationRecord
	validates :wordA, presence: true
    validates :wordB, presence: true
    validates :isAnagrama, presence:false
end
