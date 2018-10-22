class Student

#Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created

  def initialize (name, cohort)
    @name = name
    @cohort = cohort
  end

#Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  #Add in Setter methods to update the students name and what cohort they are in.

  def change_name(new_name)
    @name = new_name
  end

  def change_cohort(new_cohort)
    @cohort = new_cohort
  end

#Create a method that gets the student to talk (eg. Returns "I can talk!).

  def talk()
    return "I can talk"
  end

#Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

  def say_favourite_language(language)
    return "I love #{language}"
  end

end
