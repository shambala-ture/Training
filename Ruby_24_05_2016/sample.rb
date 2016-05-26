
  # def initialize(name)
  #   @name = name
  #   @db ||= Hash.new { |students, grade| students[grade] = [] }
  # end
  # def add(student, grade)
  #   db[grade] << student
  # end
  # def grade(level)
  #   db[level] || []
  # end
  # def sort
  #   sorted = db.map { |grade, students| [ grade, students.sort ] }
  #   Hash[sorted]
  # end
  def school
    @school
  end

  def setup
    @school = School.new
  end

  def test_an_empty_school
   hash({})
  end

  def test_add_student
    school.add("Aimee", 2)
    assert_equal({2 => ["Aimee"]})
  end

  def test_add_more_students_in_same_class
    school.add("Blair", 2)
    school.add("James", 2)
    school.add("Paul", 2)
    hash({2 => ["Blair", "James", "Paul"]})
  end