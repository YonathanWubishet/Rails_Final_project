class Book < ApplicationRecord
    has_one_attached :file
    
    def verify_membership
    end
    def create_account
    end
    def browse_all
    end
    def search_all
    end
    def display_all
    end
    def purchase
    end
    def display_purchased
    end
    def browse_free
    end
    def display_free
    end
    def search_free
    end
end