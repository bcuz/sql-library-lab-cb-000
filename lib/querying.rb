def select_books_titles_and_years_in_first_series_order_by_year
  # "Write your SQL query here"
  'select title, year from books where series_id = 1 order by year'
end

def select_name_and_motto_of_char_with_longest_motto
  # "Write your SQL query here"
  'select name, motto from characters order by length(motto) desc limit 1'
end


def select_value_and_count_of_most_prolific_species
  # "Write your SQL query here"
  'select species, count(species) from characters group by species order by count(species) desc limit 1'

end

def select_name_and_series_subgenres_of_authors
  # "Write your SQL query here"
  # author name and their subgenres ?
  # just series and authors
  # SELECT SUM(cats.net_worth)
  # FROM owners
  # INNER JOIN cats_owners
  # ON owners.id = cats_owners.owner_id
  # JOIN cats ON cats_owners.cat_id = cats.id
  # WHERE cats_owners.owner_id = 2;

  'select authors.name, subgenres.name from authors inner join series on authors.id = series.author_id join subgenres on series.subgenre_id = subgenres.id'
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"

  # group by species and series
  # 'select species, count(species) from characters group by species having species = "human"'
  # # first see species tied to series
  # 'select species, count(species) from characters inner join series on characters.series_id = series.id group by series.title having species = "human"'

  # only select title?
  # 'select title, species, count(species) from characters inner join series on characters.series_id = series.id group by species, title order by count(species) desc'
  'select title from characters inner join series on characters.series_id = series.id group by species, title having species = "human" order by count(species) desc limit 1'

  # [["direwolf"], ["human"], ["cylon"]]
  # 'select distinct species from characters'

end

def select_character_names_and_number_of_books_they_are_in
  # "Write your SQL query here"
  # 'select name,  from characters inner join series on characters.series_id = series.id group by name, books'

  # that just gives total characters for each book. incremental just like anything else
  "select name, count(character_id) from character_books join characters on character_books.character_id = characters.id group by character_id order by count(character_id) desc, name"
end
