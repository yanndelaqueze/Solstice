class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :orders
  has_many :order_items, through: :orders
  after_commit :assign_order_to_user, on: [:create]

  private

  def assign_order_to_user
    if session[:current_order_id]
      order = Order.find(session[:current_order_id])
      order.update(user: self)
      session[:current_order_id] = nil
    end
  end

end
