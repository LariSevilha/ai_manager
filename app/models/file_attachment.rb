class FileAttachment < ApplicationRecord
  belongs_to :attachable, polymorphic: true
  belongs_to :user
end
