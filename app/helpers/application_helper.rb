module ApplicationHelper
    def find_favourite(product)
        product.favourites.find_by_user_id(current_user.id)
    end

    #select_items is a helper method to get the first (num_of_items:) number of items from a given collection returned from a database collection (collection:)
    #examples of collecitons are products and followed user profiles
    def select_items(collection:, num_of_items: )
        selection = []
        collection.each_with_index do |item, i|
            selection.push(item)
            if i == num_of_items - 1
                break
            end
        end
        selection
    end

            
end
