class AddHomepageResumeAndHomepageResumeEnToUsers < ActiveRecord::Migration[6.1]
  def change
    unless column_exists? :users, :homepage_resume
      add_column :users, :homepage_resume, :text
    end

    unless column_exists? :users, :homepage_resume_en
      add_column :users, :homepage_resume_en, :text
    end
  end
end
