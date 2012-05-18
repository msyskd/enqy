class Client < ActiveRecord::Base
  attr_accessible :name, :notice_me, :renewal_month1, :renewal_month10, :renewal_month11, :renewal_month12, :renewal_month2, :renewal_month3, :renewal_month4, :renewal_month5, :renewal_month6, :renewal_month7, :renewal_month8, :renewal_month9, :sales_person_id, :usable, :user_id

  validates :name, :presence => true
  validates :notice_me, :presence => true
  validates :sales_person_id, :presence => true, :numericality => true
  validates :user_id, :presence => true, :numericality => true

  belongs_to :user
  belongs_to :sales_person
  
  def renewal_month
    a = []

    if renewal_month1
      a.push(1)
    end

    if renewal_month2
      a.push(2)
    end

    if renewal_month3
      a.push(3)
    end

    if renewal_month4
      a.push(4)
    end

    if renewal_month5
      a.push(5)
    end

    if renewal_month6
      a.push(6)
    end

    if renewal_month7
      a.push(7)
    end

    if renewal_month8
      a.push(8)
    end

    if renewal_month9
      a.push(9)
    end

    if renewal_month10
      a.push(10)
    end

    if renewal_month11
      a.push(11)
    end

    if renewal_month12
      a.push(12)
    end
    
    a.join(',')
    
  end

end
