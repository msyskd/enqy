# encoding: utf-8
class Enquiry < ActiveRecord::Base
  attr_accessible :answer, :client_id, :closed, :end, :question, :start, :system_id, :total_time, :user_id

  validates :client_id, :presence => true
  validates :question, :presence => true
  validates :start, :presence => true
  validates :system_id, :presence => true
  validates :user_id, :presence => true

  belongs_to :user
  belongs_to :system
  belongs_to :client
  
  def self.search(searches)
    enquiry = order("start")

    if searches.blank?
      enquiry = enquiry.all
    else
      searches.gsub("　"," ").split.each do |search|
        enquiry = enquiry.where('question like :search or answer like :search', {:search => "%#{search}%" } )
      end
    end
    enquiry
  end
end
