class Message < ApplicationRecord
# ------------------------------------------------------------------------------
# Includes & Extensions
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Constants
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Attributes
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Associations
# ------------------------------------------------------------------------------

belongs_to :room
belongs_to :user

# ------------------------------------------------------------------------------
# Validations
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Callbacks
# ------------------------------------------------------------------------------

after_create_commit { MessageBroadcastJob.perform_later(self)}

# ------------------------------------------------------------------------------
# Nested Attributes
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Scopes
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Other
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Class Methods
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
# Instance Methods
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
protected
# ------------------------------------------------------------------------------



# ------------------------------------------------------------------------------
private
# ------------------------------------------------------------------------------




end
