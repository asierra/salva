class TechnicalProductsController < PublicationController
  defaults :resource_class => Techproduct, :collection_name => 'technical_products', :instance_name => 'technical_product',
           :user_role_class => :user_techproducts, :role_class => :userrole

  def technical_product_params
    params.require(:technical_product).permit(:authors, :title, :techproductstatus_id, :techproducttype_id, :descr,
    :institution_id, user_techproducts_attributes: [:user_id, :userrole_id, :year])
  end
end
