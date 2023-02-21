class NewspaperArticlesController < PublicationController
  defaults :resource_class => Newspaperarticle, :collection_name => 'newspaper_articles', :instance_name => 'newspaper_article',
           :user_role_class => :user_newspaperarticles
  
  def newspaper_article_params
    params.require(:newspaper_article).permit(:authors, :title, :newspaper_id, :newsdate, :url,
    user_newspaperarticles_attributes: [:user_id, :ismainauthor])
  end
end