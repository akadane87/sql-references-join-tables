CREATE TABLE recipe_ingredients(
  id SERIAL PRIMARY KEY,
  recipe_id INTEGER REFERENCES recipes(id),
  ingredient_id INTEGER REFERENCES ingredient(id)
);

CREATE INDEX ON recipe_ingredients(ingredient_id);
CREATE INDEX ON recipe_ingredients(recipe_id);
