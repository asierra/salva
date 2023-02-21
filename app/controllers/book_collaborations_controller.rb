class BookCollaborationsController < PublicationController
   defaults :resource_class => Bookedition,
            :collection_name => 'book_collaborations',
            :instance_name => 'book_collaboration',
            :user_role_class => :bookedition_roleinbooks,
            :role_class => :roleinbook,
            :resource_class_scope => :collaborators

   def book_collaboration_params
      params.require(:book_collaboration).permit(:edition, :isbn, :pages, :year, :month, :mediatype_id, :editionstatus_id,
      book_attributes: [:authors, :title, :booktype_id, :country_id, :language_id, :volume, :booklink],
      bookedition_roleinbooks_attributes: [:user_id, :roleinbook_id])
   end
end
