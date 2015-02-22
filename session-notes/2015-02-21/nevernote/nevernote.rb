require './models.rb'

Note.all.destroy # start from a blanks slate
User.all.destroy
Notebook.all.destroy
Tag.all.destroy
Tagging.all.destroy

joe = User.create(username: "Joe", password: "beans")

p User.count == 1

recipes = Notebook.create(name: "Recipes", user: joe)


attrs = {name: "Recipes", user: joe}
n = Notebook.new
n.name = attrs[:name]
n.user = attrs[:user]
n.save

p Notebook.count == 1

# As a user, I want to keep a store of notes.
bkfst = Note.new(title: "Breakfast ideas", content: "truffle oil egg sandwich")
bkfst.notebook = recipes
bkfst.save

p Note.count == 1

# As a user, I want to search for notes by their title.
p Note.all(:title.like => "Breakfast %").first == bkfst

# As a user, I want to organize notes into notebooks.
p bkfst.notebook == recipes

# As a user, I want to add tags to notes.
incomplete = Tag.create(name: "incomplete")
bkfst.tags << incomplete
bkfst.save

p joe.notebooks
p joe.notes
p joe.notes.first.tags
# As a user, I want to see all notes in a notebook.
# p recipes.notes

# As a user, I want to see all notes that have a particular tag.
# p incomplete.notes
