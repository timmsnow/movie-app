class AddLanguageToMovie < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :language, :string
  end
end
