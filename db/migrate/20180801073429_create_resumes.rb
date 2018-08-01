class CreateResumes < ActiveRecord::Migration[5.2]
  def change
    create_table :resumes do |t|
      t.string :title
      t.string :description
      t.integer :job_id

      t.timestamps
    end
  end
end
