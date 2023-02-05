class AddStartDateAndEndDateToTheses < ActiveRecord::Migration[6.1]
  def change
    add_column :theses, :start_date, :date
    add_column :theses, :end_date, :date
  end
end
