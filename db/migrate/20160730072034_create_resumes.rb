class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :content
      t.string :s3_url
      t.timestamps null: false
    end
  end
end
