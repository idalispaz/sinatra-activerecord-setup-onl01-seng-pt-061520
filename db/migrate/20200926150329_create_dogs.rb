class CreateDogs < ActiveRecord::Migration[5.2]
  def up
  #   create_table :dogs do |t|
  #     t.string :name
  #     t.string :breed
  #   end
  # end

  # def down
  #   drop_table :dogs
  # end

  def change #shorthand of writing "up" and "Down" methods
    def change
      create_table :dogs do |t|
        t.string :name 
        t.string :breed
      end 
  end 
end

#though the rollback ("down") method is not included. it's implicit in the change method
#rolling back the database would work exactly like the way the down method would

#we add SINATRA_ENV=developement since at the top of the config/environment we are telling 
#sinatra that it should use hte "developement" environment for both "shotgun" and the testing suit.
#so therefor we want to make sure our mgirations run on the same environemnt as well.
#hency why we specified 'SINATRA_ENV=development
