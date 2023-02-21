class BookChaptersController < PublicationController
   defaults :resource_class => Chapterinbook,
            :collection_name => 'book_chapters',
            :instance_name => 'book_chapter',
            :user_role_class => :chapterinbook_roleinchapters,
            :role_class => :roleinchapter

   def book_chapter_params
      params.require(:book_chapter).permit(:title, :pages, :bookchaptertype_id, 
       chapterinbook_roleinchapters_attributes: [:user_id, :roleinchapter_id],
       bookedition_attributes: [:edition, :isbn, :pages, :year, :month, :mediatype_id, :editionstatus_id, 
         book_attributes: [:authors, :title, :booktype_id, :country_id, :language_id, :volume, :booklink]])
   end
end
