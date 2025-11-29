class User < ApplicationRecord
  has_many :sent_invitations, class_name: "Invitation", foreign_key: "inviter_id"
  has_many :received_invitations, class_name: "Invitation", foreign_key: "invitee_id"
end
