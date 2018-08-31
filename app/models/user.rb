class User < ApplicationRecord
    validates :email, uniqueness: { case_sensitive: false,
                                    message: "There are another user with this e-mail" }
end
