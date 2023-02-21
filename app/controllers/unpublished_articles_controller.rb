class UnpublishedArticlesController < PublicationController
  defaults :user_role_class => :user_articles, :resource_class => Article, :collection_name => 'articles', 
           :instance_name => 'article', :resource_class_scope => :unpublished

  def article_params
    params.require(:article).permit(:authors, :title, :journal_id, :year, :month, :vol, :num, :pages, :doi, :url, :other,
     :articlestatus_id, user_articles_attributes: [:user_id, :ismainauthor])
  end
end
