class Resume < ApplicationRecord
  belongs_to :job

  mount_uploader :attachment, AttachmentUploader
end
