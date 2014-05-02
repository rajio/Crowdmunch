class AddRefPicToProducts < ActiveRecord::Migration
  def change
    add_column :products, :ref_pic, :string
  end
end
