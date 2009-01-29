class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :title
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
