class Bookedition < ActiveRecord::Base
  validates_presence_of :edition_id, :message => "Proporcione el edition_id"
  validates_presence_of :publisher_id, :message => "Proporcione el publisher_id"
  validates_presence_of :mediatype_id, :message => "Proporcione el mediatype_id"
  validates_uniqueness_of :edition_id, :scope => [ :book_id, :mediatype_id ]

  belongs_to :book
  belongs_to :edition
  belongs_to :publisher 
  belongs_to :mediatype
  belongs_to :editionstatus

  has_many :bookedition_comment
  has_many :chapterinbook
end