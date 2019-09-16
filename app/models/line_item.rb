class LineItem < ApplicationRecord
  belongs_to :Sock
  belongs_to :cart
end
