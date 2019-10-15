class CreateCoupons < ActiveRecord::Migration[5.0]
  def change
    create_table :coupons do |t|
      t.string :coupon_code
      t.string :store
      t.timestamps :created_at, null: false 
      t.timestamps :updated_at, null: false
    end
  end
end
