class List < ApplicationRecord
  #:dependent => :destroy (IS on_delete cascade)
  has_one :task, :dependent => :destroy
  accepts_nested_attributes_for :task

end
