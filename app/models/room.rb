class Room < ApplicationRecord

  # ------------------------------------------------------------------------------
  # Includes & Extensions
  # ------------------------------------------------------------------------------
  
	extend FriendlyId
	friendly_id :name, use: :slugged
  
  # ------------------------------------------------------------------------------
  # Constants
  # ------------------------------------------------------------------------------
  
  
  
  # ------------------------------------------------------------------------------
  # Attributes
  # ------------------------------------------------------------------------------
  
  
  
  # ------------------------------------------------------------------------------
  # Associations
  # ------------------------------------------------------------------------------
  
  has_many :users
  has_many :messages
  
  
  # ------------------------------------------------------------------------------
  # Validations
  # ------------------------------------------------------------------------------
  
  
  
  # ------------------------------------------------------------------------------
  # Callbacks
  # ------------------------------------------------------------------------------


  
  
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