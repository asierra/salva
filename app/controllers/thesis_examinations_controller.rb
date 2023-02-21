class ThesisExaminationsController < PublicationController
   defaults :user_role_class => :thesis_jurors, :role_class => :roleinjury, :user_role_columns => [:year]

   def thesis_examination_params
      params.require(:thesis_examination).permit(:title, :authors, :thesisstatus_id, :end_date, :career_id, :degree_id,
       :thesismodality_id, :institution_id, :university_id, :country_id,
        thesis_jurors_attributes: [:user_id, :roleinjury_id])
    end
end
