class DeleteLanguageFromMovie < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :language, :string
  end
end
