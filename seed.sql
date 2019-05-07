DROP TABLE IF EXISTS recipie;

CREATE TABLE recipie (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  image VARCHAR(255),
  ingredients VARCHAR(255),
  method VARCHAR(255)
);

INSERT INTO recipie (title, image, ingredients, method) VALUES ('Spaghetti in tomato sauce', 'https://feedmephoebe.com/wp-content/uploads/2017/10/Homemade-Gluten-Free-Pasta-Recipe-Tuscan-Pici-Spaghetti-Noodles-19-200x200.jpg', 'Ingredients 1', 'Method 1');
INSERT INTO recipie (title, image, ingredients, method) VALUES ('Sweet potato soup', 'https://www.iheartnaptime.net/wp-content/uploads/2016/10/sweet-potato-soup-200x200.jpg', 'Ingredients 2', 'Method 2');
INSERT INTO recipie (title, image, ingredients, method) VALUES ('Creamy shrimp', 'https://thatlowcarblife.com/wp-content/uploads/2019/03/shrimp-recipe-200x200.jpg', 'Ingredients 3', 'Method 3');
INSERT INTO recipie (title, image, ingredients, method) VALUES ('Chocolate cheesecake', 'https://letsdishrecipes.com/wp-content/uploads/2012/03/CHocolate-PB-Dessert-1WB-200x200.jpg', 'Ingredients 4', 'Method 4');
