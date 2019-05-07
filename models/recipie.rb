require 'pg'

class Recipie
  attr_accessor(:id, :title, :image, :ingredients, :method)

  ##connect to db, class method
  def self.open_connection
    connection = PG.connect(dbname: 'recipiedb')
  end


  ##method to get all the blog posts

  def self.all
    connection = self.open_connection

    sql = "SELECT id, title, image, ingredients, method FROM recipie ORDER BY id"

    results = connection.exec(sql)

    #return array of post object
    recipies = results.map do |recipie|
      self.hydrate(recipie)
    end

  #return array of post object
    recipies
  end

  def self.find(id)
    connection = self.open_connection

    sql = "SELECT * FROM recipie WHERE id = #{id} LIMIT 1"

    recipies = connection.exec(sql)

    recipie = self.hydrate(recipies[0])

    recipie
  end


  def self.hydrate(recipie_data)
    recipie = Recipie.new

    recipie.id = recipie_data['id']
    recipie.title = recipie_data['title']
    recipie.image = recipie_data['image']
    recipie.ingredients = recipie_data['ingredients']
    recipie.method = recipie_data['method']

    recipie
  end

  def save
    connection = Recipie.open_connection

    if (!self.id)
      sql = "INSERT INTO recipie (title, image, ingredients, method) VALUES ('#{self.title}','#{self.image}','#{self.ingredients}','#{self.method}')"

    else
      sql = "UPDATE recipie SET title = '#{self.title}', image = '#{self.image}', ingredients = '#{self.ingredients}', method = '#{self.method}' WHERE id = #{self.id}"
    end
    connection.exec(sql)
  end

  def self.destroy(id)
    connection = self.open_connection

    sql = "DELETE FROM recipie WHERE id = #{id}"

    connection.exec(sql)
  end


end

puts Recipie.all
