# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
Award.all.each{ |award| award.destroy }
Nominee.all.each{ |nominee| nominee.destroy }
Nomination.all.each{ |nomination| nomination.destroy }

   awards = Award.create([{ :name => 'Best Picture' } \
                        , { :name => 'Actor in a Leading Role' } \
                        , { :name => 'Actor in a Supporting Role' } \
                        , { :name => 'Actress in a Leading Role' } \
                        , { :name => 'Actress in a Supporting Role' } \
                        , { :name => 'Animated Feature Film' } \
                        , { :name => 'Art Direction' } \
                        , { :name => 'Cinematography' } \
                        , { :name => 'Costume Design' } \
                        , { :name => 'Directing' } \
                        , { :name => 'Documentary Feature' } \
                        , { :name => 'Documentary Short' } \
                        , { :name => 'Film Editing' } \
                        , { :name => 'Foreign Language Film' } \
                        , { :name => 'Makeup' } \
                        , { :name => 'Music (Original Score)' } \
                        , { :name => 'Music (Original Song)' } \
                        , { :name => 'Short Film (Animated)' } \
                        , { :name => 'Short Film (Live Action)' } \
                        , { :name => 'Sound Editing' } \
                        , { :name => 'Sound Mixing' } \
                        , { :name => 'Visual Effects' } \
                        , { :name => 'Writing (Adapted Screenplay)' } \
                        , { :name => 'Writing (Original Screenplay)' } \
                        ])
                        
   nominees = Nominee.create([ { :name => "A Matter of Loaf and Death" } \
                             , { :name => "A Prophet (Un Prophète)" } \
                             , { :name => "A Serious Man" } \
                             , { :name => "Ajami" } \
                             , { :name => "An Education" } \
                             , { :name => "Anna Kendrick" } \
                             , { :name => "Avatar" } \
                             , { :name => "Bright Star" } \
                             , { :name => "Burma VJ" } \
                             , { :name => "Carey Mulligan" } \
                             , { :name => "China's Unnatural Disaster: The Tears of Sichuan Province" } \
                             , { :name => "Christoph Waltz" } \
                             , { :name => "Christopher Plummer" } \
                             , { :name => "Coco Before Chanel" } \
                             , { :name => "Colin Firth" } \
                             , { :name => "Coraline" } \
                             , { :name => "Crazy Heart" } \
                             , { :name => "District 9" } \
                             , { :name => "Fantastic Mr. Fox" } \
                             , { :name => "Food, Inc." } \
                             , { :name => "French Roast" } \
                             , { :name => "Gabourey Sidibe" } \
                             , { :name => "George Clooney" } \
                             , { :name => "Granny O'Grimm's Sleeping Beauty" } \
                             , { :name => "Harry Potter and the Half-Blood Prince" } \
                             , { :name => "Helen Mirren" } \
                             , { :name => "Il Divo" } \
                             , { :name => "In the Loop" } \
                             , { :name => "Inglourious Basterds" } \
                             , { :name => "Instead of Abracadabra" } \
                             , { :name => "Jeff Bridges" } \
                             , { :name => "Jeremy Renner" } \
                             , { :name => "Kavi" } \
                             , { :name => "Logorama" } \
                             , { :name => "Maggie Gyllenhaal" } \
                             , { :name => "Matt Damon" } \
                             , { :name => "Meryl Streep" } \
                             , { :name => "Miracle Fish" } \
                             , { :name => "Mo'Nique" } \
                             , { :name => "Morgan Freeman" } \
                             , { :name => "Music By Prudence" } \
                             , { :name => "Nine" } \
                             , { :name => "Paris 36" } \
                             , { :name => "Penélope Cruz" } \
                             , { :name => "Precious: Based on the Novel 'Push' by Sapphire" } \
                             , { :name => "Rabbit à la Berlin" } \
                             , { :name => "Sandra Bullock" } \
                             , { :name => "Sherlock Holmes" } \
                             , { :name => "Stanley Tucci" } \
                             , { :name => "Star Trek" } \
                             , { :name => "The Blind Side" } \
                             , { :name => "The Cove" } \
                             , { :name => "The Door" } \
                             , { :name => "The Hurt Locker" } \
                             , { :name => "The Imaginarium of Doctor Parnassus" } \
                             , { :name => "The Lady and the Reaper (La Dama y la Muerte)" } \
                             , { :name => "The Last Campaign of Governor Booth Gardner" } \
                             , { :name => "The Last Truck: Closing of a GM Plant" } \
                             , { :name => "The Messenger" } \
                             , { :name => "The Milk of Sorrow (La Teta Asustada)" } \
                             , { :name => "The Most Dangerous Man in America: Daniel Ellsberg and the Pentagon Papers" } \
                             , { :name => "The New Tenants" } \
                             , { :name => "The Princess and the Frog" } \
                             , { :name => "The Secret in Their Eyes (El Secreto de Sus Ojos)" } \
                             , { :name => "The Secret of Kells" } \
                             , { :name => "The White Ribbon (Das Weisse Band)" } \
                             , { :name => "The Young Victoria" } \
                             , { :name => "Transformers: Revenge of the Fallen" } \
                             , { :name => "Up in the Air" } \
                             , { :name => "Up" } \
                             , { :name => "Vera Farmiga" } \
                             , { :name => "Which Way Home" } \
                             , { :name => "Woody Harrelson" } \
                            ])

  nomination = Nomination.create([  { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "James Cameron and Jon Landau" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("The Blind Side").id, :description => "Gil Netter, Andrew A. Kosove and Broderick Johnson" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("District 9").id, :description => "Peter Jackson and Carolynne Cunningham" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("An Education").id, :description => "Finola Dwyer and Amanda Posey" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Kathryn Bigelow, Mark Boal, Nicolas Chartier and Greg Shapiro" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Lawrence Bender" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("Precious: Based on the Novel 'Push' by Sapphire").id, :description => "Lee Daniels, Sarah Siegel-Magness and Gary Magness" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("A Serious Man").id, :description => "Joel Coen and Ethan Coen" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("Up").id, :description => "Jonas Rivera" } \
                                  , { :award_id => Award.find_by_name('Best Picture').id, :nominee_id => Nominee.find_by_name("Up in the Air").id, :description => "Daniel Dubiecki, Ivan Reitman and Jason Reitman" } \
                                  , { :award_id => Award.find_by_name('Actor in a Leading Role').id, :nominee_id => Nominee.find_by_name("Jeff Bridges").id, :description => "Crazy Heart" } \
                                  , { :award_id => Award.find_by_name('Actor in a Leading Role').id, :nominee_id => Nominee.find_by_name("George Clooney").id, :description => "Up in the Air" } \
                                  , { :award_id => Award.find_by_name('Actor in a Leading Role').id, :nominee_id => Nominee.find_by_name("Colin Firth").id, :description => "A Single Man" } \
                                  , { :award_id => Award.find_by_name('Actor in a Leading Role').id, :nominee_id => Nominee.find_by_name("Morgan Freeman").id, :description => "Invictus" } \
                                  , { :award_id => Award.find_by_name('Actor in a Leading Role').id, :nominee_id => Nominee.find_by_name("Jeremy Renner").id, :description => "The Hurt Locker" } \
                                  , { :award_id => Award.find_by_name('Actor in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Matt Damon").id, :description => "Invictus" } \
                                  , { :award_id => Award.find_by_name('Actor in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Woody Harrelson").id, :description => "The Messenger" } \
                                  , { :award_id => Award.find_by_name('Actor in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Christopher Plummer").id, :description => "The Last Station" } \
                                  , { :award_id => Award.find_by_name('Actor in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Stanley Tucci").id, :description => "The Lovely Bones" } \
                                  , { :award_id => Award.find_by_name('Actor in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Christoph Waltz").id, :description => "Inglourious Basterds" } \
                                  , { :award_id => Award.find_by_name('Actress in a Leading Role').id, :nominee_id => Nominee.find_by_name("Sandra Bullock").id, :description => "The Blind Side" } \
                                  , { :award_id => Award.find_by_name('Actress in a Leading Role').id, :nominee_id => Nominee.find_by_name("Helen Mirren").id, :description => "The Last Station" } \
                                  , { :award_id => Award.find_by_name('Actress in a Leading Role').id, :nominee_id => Nominee.find_by_name("Carey Mulligan").id, :description => "An Education" } \
                                  , { :award_id => Award.find_by_name('Actress in a Leading Role').id, :nominee_id => Nominee.find_by_name("Gabourey Sidibe").id, :description => "Precious: Based on the Novel 'Push' by Sapphire" } \
                                  , { :award_id => Award.find_by_name('Actress in a Leading Role').id, :nominee_id => Nominee.find_by_name("Meryl Streep").id, :description => "Julie & Julia" } \
                                  , { :award_id => Award.find_by_name('Actress in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Penélope Cruz").id, :description => "Nine" } \
                                  , { :award_id => Award.find_by_name('Actress in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Vera Farmiga").id, :description => "Up in the Air" } \
                                  , { :award_id => Award.find_by_name('Actress in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Maggie Gyllenhaal").id, :description => "Crazy Heart" } \
                                  , { :award_id => Award.find_by_name('Actress in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Anna Kendrick").id, :description => "Up in the Air" } \
                                  , { :award_id => Award.find_by_name('Actress in a Supporting Role').id, :nominee_id => Nominee.find_by_name("Mo'Nique").id, :description => "Precious: Based on the Novel 'Push' by Sapphire" } \
                                  , { :award_id => Award.find_by_name('Animated Feature Film').id, :nominee_id => Nominee.find_by_name("Coraline").id, :description => "Henry Selick" } \
                                  , { :award_id => Award.find_by_name('Animated Feature Film').id, :nominee_id => Nominee.find_by_name("Fantastic Mr. Fox").id, :description => "Wes Anderson" } \
                                  , { :award_id => Award.find_by_name('Animated Feature Film').id, :nominee_id => Nominee.find_by_name("The Princess and the Frog").id, :description => "John Musker and Ron Clements" } \
                                  , { :award_id => Award.find_by_name('Animated Feature Film').id, :nominee_id => Nominee.find_by_name("The Secret of Kells").id, :description => "Tomm Moore" } \
                                  , { :award_id => Award.find_by_name('Animated Feature Film').id, :nominee_id => Nominee.find_by_name("Up").id, :description => "Pete Docter" } \
                                  , { :award_id => Award.find_by_name('Art Direction').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "Rick Carter and Robert Stromberg (Art Direction); Kim Sinclair (Set Decoration)" } \
                                  , { :award_id => Award.find_by_name('Art Direction').id, :nominee_id => Nominee.find_by_name("The Imaginarium of Doctor Parnassus").id, :description => "Dave Warren and Anastasia Masaro (Art Direction); Caroline Smith (Set Decoration)" } \
                                  , { :award_id => Award.find_by_name('Art Direction').id, :nominee_id => Nominee.find_by_name("Nine").id, :description => "John Myhre (Art Direction); Gordon Sim (Set Decoration)" } \
                                  , { :award_id => Award.find_by_name('Art Direction').id, :nominee_id => Nominee.find_by_name("Sherlock Holmes").id, :description => "Sarah Greenwood (Art Direction); Katie Spencer (Set Decoration)" } \
                                  , { :award_id => Award.find_by_name('Art Direction').id, :nominee_id => Nominee.find_by_name("The Young Victoria").id, :description => "Patrice Vermette (Art Direction); Maggie Gray (Set Decoration)" } \
                                  , { :award_id => Award.find_by_name('Cinematography').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "Mauro Fiore" } \
                                  , { :award_id => Award.find_by_name('Cinematography').id, :nominee_id => Nominee.find_by_name("Harry Potter and the Half-Blood Prince").id, :description => "Bruno Delbonnel" } \
                                  , { :award_id => Award.find_by_name('Cinematography').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Barry Ackroyd" } \
                                  , { :award_id => Award.find_by_name('Cinematography').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Robert Richardson" } \
                                  , { :award_id => Award.find_by_name('Cinematography').id, :nominee_id => Nominee.find_by_name("The White Ribbon (Das Weisse Band)").id, :description => "Christian Berger" } \
                                  , { :award_id => Award.find_by_name('Costume Design').id, :nominee_id => Nominee.find_by_name("Bright Star").id, :description => "Janet Patterson" } \
                                  , { :award_id => Award.find_by_name('Costume Design').id, :nominee_id => Nominee.find_by_name("Coco Before Chanel").id, :description => "Catherine Leterrier" } \
                                  , { :award_id => Award.find_by_name('Costume Design').id, :nominee_id => Nominee.find_by_name("The Imaginarium of Doctor Parnassus").id, :description => "Monique Prudhomme" } \
                                  , { :award_id => Award.find_by_name('Costume Design').id, :nominee_id => Nominee.find_by_name("Nine").id, :description => "Colleen Atwood" } \
                                  , { :award_id => Award.find_by_name('Costume Design').id, :nominee_id => Nominee.find_by_name("The Young Victoria").id, :description => "Sandy Powell" } \
                                  , { :award_id => Award.find_by_name('Directing').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "James Cameron" } \
                                  , { :award_id => Award.find_by_name('Directing').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Kathryn Bigelow" } \
                                  , { :award_id => Award.find_by_name('Directing').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Quentin Tarantino" } \
                                  , { :award_id => Award.find_by_name('Directing').id, :nominee_id => Nominee.find_by_name("Precious: Based on the Novel 'Push' by Sapphire").id, :description => "Lee Daniels" } \
                                  , { :award_id => Award.find_by_name('Directing').id, :nominee_id => Nominee.find_by_name("Up in the Air").id, :description => "Jason Reitman" } \
                                  , { :award_id => Award.find_by_name('Documentary Feature').id, :nominee_id => Nominee.find_by_name("Burma VJ").id, :description => "Anders Østergaard and Lise Lense-Møller" } \
                                  , { :award_id => Award.find_by_name('Documentary Feature').id, :nominee_id => Nominee.find_by_name("The Cove").id, :description => "" } \
                                  , { :award_id => Award.find_by_name('Documentary Feature').id, :nominee_id => Nominee.find_by_name("Food, Inc.").id, :description => "Robert Kenner and Elise Pearlstein" } \
                                  , { :award_id => Award.find_by_name('Documentary Feature').id, :nominee_id => Nominee.find_by_name("The Most Dangerous Man in America: Daniel Ellsberg and the Pentagon Papers").id, :description => "Judith Ehrlich and Rick Goldsmith" } \
                                  , { :award_id => Award.find_by_name('Documentary Feature').id, :nominee_id => Nominee.find_by_name("Which Way Home").id, :description => "Rebecca Cammisa" } \
                                  , { :award_id => Award.find_by_name('Documentary Short').id, :nominee_id => Nominee.find_by_name("China's Unnatural Disaster: The Tears of Sichuan Province").id, :description => "Jon Alpert and Matthew O'Neill" } \
                                  , { :award_id => Award.find_by_name('Documentary Short').id, :nominee_id => Nominee.find_by_name("The Last Campaign of Governor Booth Gardner").id, :description => "Daniel Junge and Henry Ansbacher" } \
                                  , { :award_id => Award.find_by_name('Documentary Short').id, :nominee_id => Nominee.find_by_name("The Last Truck: Closing of a GM Plant").id, :description => "Steven Bognar and Julia Reichert" } \
                                  , { :award_id => Award.find_by_name('Documentary Short').id, :nominee_id => Nominee.find_by_name("Music by Prudence").id, :description => "Roger Ross Williams and Elinor Burkett" } \
                                  , { :award_id => Award.find_by_name('Documentary Short').id, :nominee_id => Nominee.find_by_name("Rabbit à la Berlin").id, :description => "Bartek Konopka and Anna Wydra" } \
                                  , { :award_id => Award.find_by_name('Film Editing').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "Stephen Rivkin, John Refoua and James Cameron" } \
                                  , { :award_id => Award.find_by_name('Film Editing').id, :nominee_id => Nominee.find_by_name("District 9").id, :description => "Julian Clarke" } \
                                  , { :award_id => Award.find_by_name('Film Editing').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Bob Murawski and Chris Innis" } \
                                  , { :award_id => Award.find_by_name('Film Editing').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Sally Menke" } \
                                  , { :award_id => Award.find_by_name('Film Editing').id, :nominee_id => Nominee.find_by_name("Precious: Based on the Novel 'Push' by Sapphire").id, :description => "Joe Klotz" } \
                                  , { :award_id => Award.find_by_name('Foreign Language Film').id, :nominee_id => Nominee.find_by_name("Ajami").id, :description => "Israel - Directed by Scandar Copti and Yaron Shani" } \
                                  , { :award_id => Award.find_by_name('Foreign Language Film').id, :nominee_id => Nominee.find_by_name("The Milk of Sorrow (La Teta Asustada)").id, :description => "Peru - Directed by Claudia Llosa " } \
                                  , { :award_id => Award.find_by_name('Foreign Language Film').id, :nominee_id => Nominee.find_by_name("A Prophet (Un Prophète)").id, :description => "France - Directed by Jacques Audiard" } \
                                  , { :award_id => Award.find_by_name('Foreign Language Film').id, :nominee_id => Nominee.find_by_name("The Secret in Their Eyes (El Secreto de Sus Ojos)").id, :description => "Argentina - Directed by Juan José Campanella" } \
                                  , { :award_id => Award.find_by_name('Foreign Language Film').id, :nominee_id => Nominee.find_by_name("The White Ribbon (Das Weisse Band)").id, :description => "Germany - Directed by Michael Haneke" } \
                                  , { :award_id => Award.find_by_name('Makeup').id, :nominee_id => Nominee.find_by_name("Il Divo").id, :description => "Aldo Signoretti and Vittorio Sodano" } \
                                  , { :award_id => Award.find_by_name('Makeup').id, :nominee_id => Nominee.find_by_name("Star Trek").id, :description => "Barney Burman, Mindy Hall and Joel Harlow" } \
                                  , { :award_id => Award.find_by_name('Makeup').id, :nominee_id => Nominee.find_by_name("The Young Victoria").id, :description => "Jon Henry Gordon and Jenny Shircore" } \
                                  , { :award_id => Award.find_by_name('Music (Original Score)').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "James Horner" } \
                                  , { :award_id => Award.find_by_name('Music (Original Score)').id, :nominee_id => Nominee.find_by_name("Fantastic Mr. Fox").id, :description => "Alexandre Desplat" } \
                                  , { :award_id => Award.find_by_name('Music (Original Score)').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Marco Beltrami and Buck Sanders" } \
                                  , { :award_id => Award.find_by_name('Music (Original Score)').id, :nominee_id => Nominee.find_by_name("Sherlock Holmes").id, :description => "Hans Zimmer" } \
                                  , { :award_id => Award.find_by_name('Music (Original Score)').id, :nominee_id => Nominee.find_by_name("Up").id, :description => "Michael Giacchino" } \
                                  , { :award_id => Award.find_by_name('Music (Original Song)').id, :nominee_id => Nominee.find_by_name("The Princess and the Frog").id, :description => '"Almost There" - Music and Lyric by Randy Newman' } \
                                  , { :award_id => Award.find_by_name('Music (Original Song)').id, :nominee_id => Nominee.find_by_name("The Princess and the Frog").id, :description => '"Down in New Orleans" - Music and Lyric by Randy Newman' } \
                                  , { :award_id => Award.find_by_name('Music (Original Song)').id, :nominee_id => Nominee.find_by_name("Paris 36").id, :description => '"Loin de Paname" - Music by Reinhardt Wagner and Lyric by Frank Thomas' } \
                                  , { :award_id => Award.find_by_name('Music (Original Song)').id, :nominee_id => Nominee.find_by_name("Nine").id, :description => '"Take It All" - Music and Lyric by Maury Yeston' } \
                                  , { :award_id => Award.find_by_name('Music (Original Song)').id, :nominee_id => Nominee.find_by_name("Crazy Heart").id, :description => '"The Weary Kind (Theme from Crazy Heart)" - Music and Lyric by Ryan Bingham and T Bone Burnett' } \
                                  , { :award_id => Award.find_by_name('Short Film (Animated)').id, :nominee_id => Nominee.find_by_name("French Roast").id, :description => "Fabrice O. Joubert" } \
                                  , { :award_id => Award.find_by_name('Short Film (Animated)').id, :nominee_id => Nominee.find_by_name("Granny O'Grimm's Sleeping Beauty").id, :description => "Nicky Phelan and Darragh O'Connell" } \
                                  , { :award_id => Award.find_by_name('Short Film (Animated)').id, :nominee_id => Nominee.find_by_name("The Lady and the Reaper (La Dama y la Muerte)").id, :description => "Javier Recio Gracia" } \
                                  , { :award_id => Award.find_by_name('Short Film (Animated)').id, :nominee_id => Nominee.find_by_name("Logorama").id, :description => "Nicolas Schmerkin" } \
                                  , { :award_id => Award.find_by_name('Short Film (Animated)').id, :nominee_id => Nominee.find_by_name("A Matter of Loaf and Death").id, :description => "Nick Park" } \
                                  , { :award_id => Award.find_by_name('Short Film (Live Action)').id, :nominee_id => Nominee.find_by_name("The Door").id, :description => "Juanita Wilson and James Flynn" } \
                                  , { :award_id => Award.find_by_name('Short Film (Live Action)').id, :nominee_id => Nominee.find_by_name("Instead of Abracadabra").id, :description => "Patrik Eklund and Mathias Fjellström" } \
                                  , { :award_id => Award.find_by_name('Short Film (Live Action)').id, :nominee_id => Nominee.find_by_name("Kavi").id, :description => "Gregg Helvey" } \
                                  , { :award_id => Award.find_by_name('Short Film (Live Action)').id, :nominee_id => Nominee.find_by_name("Miracle Fish").id, :description => "Luke Doolan and Drew Bailey" } \
                                  , { :award_id => Award.find_by_name('Short Film (Live Action)').id, :nominee_id => Nominee.find_by_name("The New Tenants").id, :description => "Joachim Back and Tivi Magnusson" } \
                                  , { :award_id => Award.find_by_name('Sound Editing').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "Christopher Boyes and Gwendolyn Yates Whittle" } \
                                  , { :award_id => Award.find_by_name('Sound Editing').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Paul N.J. Ottosson" } \
                                  , { :award_id => Award.find_by_name('Sound Editing').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Wylie Stateman" } \
                                  , { :award_id => Award.find_by_name('Sound Editing').id, :nominee_id => Nominee.find_by_name("Star Trek").id, :description => "Mark Stoeckinger and Alan Rankin " } \
                                  , { :award_id => Award.find_by_name('Sound Editing').id, :nominee_id => Nominee.find_by_name("Up").id, :description => "Michael Silvers and Tom Myers" } \
                                  , { :award_id => Award.find_by_name('Sound Mixing').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "Christopher Boyes, Gary Summers, Andy Nelson and Tony Johnson" } \
                                  , { :award_id => Award.find_by_name('Sound Mixing').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Paul N.J. Ottosson and Ray Beckett" } \
                                  , { :award_id => Award.find_by_name('Sound Mixing').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Michael Minkler, Tony Lamberti and Mark Ulano" } \
                                  , { :award_id => Award.find_by_name('Sound Mixing').id, :nominee_id => Nominee.find_by_name("Star Trek").id, :description => "Anna Behlmer, Andy Nelson and Peter J. Devlin" } \
                                  , { :award_id => Award.find_by_name('Sound Mixing').id, :nominee_id => Nominee.find_by_name("Transformers: Revenge of the Fallen").id, :description => "Greg P. Russell, Gary Summers and Geoffrey Patterson" } \
                                  , { :award_id => Award.find_by_name('Visual Effects').id, :nominee_id => Nominee.find_by_name("Avatar").id, :description => "Joe Letteri, Stephen Rosenbaum, Richard Baneham and Andrew R. Jones" } \
                                  , { :award_id => Award.find_by_name('Visual Effects').id, :nominee_id => Nominee.find_by_name("District 9").id, :description => "Dan Kaufman, Peter Muyzers, Robert Habros and Matt Aitken" } \
                                  , { :award_id => Award.find_by_name('Visual Effects').id, :nominee_id => Nominee.find_by_name("Star Trek").id, :description => "Roger Guyett, Russell Earl, Paul Kavanagh and Burt Dalton" } \
                                  , { :award_id => Award.find_by_name('Writing (Adapted Screenplay)').id, :nominee_id => Nominee.find_by_name("District 9").id, :description => "Written by Neill Blomkamp and Terri Tatchell" } \
                                  , { :award_id => Award.find_by_name('Writing (Adapted Screenplay)').id, :nominee_id => Nominee.find_by_name("An Education").id, :description => "Screenplay by Nick Hornby" } \
                                  , { :award_id => Award.find_by_name('Writing (Adapted Screenplay)').id, :nominee_id => Nominee.find_by_name("In the Loop").id, :description => "Screenplay by Jesse Armstrong, Simon Blackwell, Armando Iannucci, Tony Roche" } \
                                  , { :award_id => Award.find_by_name('Writing (Adapted Screenplay)').id, :nominee_id => Nominee.find_by_name("Precious: Based on the Novel 'Push' by Sapphire").id, :description => "Screenplay by Geoffrey Fletcher" } \
                                  , { :award_id => Award.find_by_name('Writing (Adapted Screenplay)').id, :nominee_id => Nominee.find_by_name("Up in the Air").id, :description => "Screenplay by Jason Reitman and Sheldon Turner" } \
                                  , { :award_id => Award.find_by_name('Writing (Original Screenplay)').id, :nominee_id => Nominee.find_by_name("The Hurt Locker").id, :description => "Written by Mark Boal" } \
                                  , { :award_id => Award.find_by_name('Writing (Original Screenplay)').id, :nominee_id => Nominee.find_by_name("Inglourious Basterds").id, :description => "Written by Quentin Tarantino" } \
                                  , { :award_id => Award.find_by_name('Writing (Original Screenplay)').id, :nominee_id => Nominee.find_by_name("The Messenger").id, :description => "Written by Alessandro Camon & Oren Moverman" } \
                                  , { :award_id => Award.find_by_name('Writing (Original Screenplay)').id, :nominee_id => Nominee.find_by_name("A Serious Man").id, :description => "Written by Joel Coen & Ethan Coen" } \
                                  , { :award_id => Award.find_by_name('Writing (Original Screenplay)').id, :nominee_id => Nominee.find_by_name("Up").id, :description => "Screenplay by Bob Peterson, Pete Docter. Story by Pete Docter, Bob Peterson, Tom McCarthy" } \
                               ])