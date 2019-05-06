module ApplicationHelper
    def find_favourite(product)
        product.favourites.find_by_user_id(current_user.id)
    end
end
