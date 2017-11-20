class Admin::Procedure < ApplicationRecord
  belongs_to :factory
  belongs_to :manufacturing_record
end
