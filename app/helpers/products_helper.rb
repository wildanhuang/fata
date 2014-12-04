module ProductsHelper
	def load_products(merk_id)
		return (Product.where(merk_id: merk_id).order("name ASC") rescue [])
	end
end
