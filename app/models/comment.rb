class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true

  # Search data thorugh both the polymorphic association
  # Comment.ransack(commentable_of_Teacher_type_status_or_commentable_of_Student_type_status_in: ['active']).result
end
