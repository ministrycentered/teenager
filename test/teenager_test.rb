require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/teenager'

class TeenagerTest < MiniTest::Unit::TestCase
  def teenager
    Teenager.new
  end

  def test_stating_something
    assert_equal 'Whatever.', teenager.hey('Tom-ay-to, tom-aaaah-to.')
  end

  def test_shouting
    skip
    assert_equal 'Woah, chill out!', teenager.hey('WATCH OUT!')
  end

  def test_shouting_without_exclamation
    skip
    assert_equal 'Woah, chill out!', teenager.hey('TAKE A SHOWER.')
  end

  def test_asking_a_question
    skip
    assert_equal 'Sure.', teenager.hey('Does this cryogenic chamber make me look fat?')
  end

  def test_asking_a_numeric_question
    skip
    assert_equal 'Sure.', teenager.hey('You are, what, like 15?')
  end

  def test_talking_forcefully
    skip
    assert_equal 'Whatever.', teenager.hey("Let's go make out behind the gym!")
  end

  def test_using_acronyms_in_regular_speech
    skip
    assert_equal 'Whatever.', teenager.hey("It's OK if you don't want to go to the DMV.")
  end

  def test_forceful_questions
    skip
    assert_equal 'Woah, chill out!', teenager.hey('WHAT THE HELL WERE YOU THINKING?')
  end

  def test_shouting_numbers
    skip
    assert_equal 'Woah, chill out!', teenager.hey('1, 2, 3 GO!')
  end

  def test_only_numbers
    skip
    assert_equal 'Whatever.', teenager.hey('1, 2, 3')
  end

  def test_question_with_only_numbers
    skip
    assert_equal 'Sure.', teenager.hey('4?')
  end

  def test_shouting_with_special_characters
    skip
    assert_equal 'Woah, chill out!', teenager.hey('ZOMG THE %^*@#$(*^ ZOMBIES ARE COMING!!11!!1!')
  end

  def test_shouting_with_no_exclamation_mark
    skip
    assert_equal 'Woah, chill out!', teenager.hey('I HATE YOU')
  end

  def test_statement_containing_question_mark
    skip
    assert_equal 'Whatever.', teenager.hey('Ending with ? means a question.')
  end

  def test_prattling_on
    skip
    assert_equal 'Sure.', teenager.hey("Wait! Hang on. Are you going to be OK?")
  end

  def test_silence
    skip
    assert_equal 'Fine. Be that way!', teenager.hey('')
  end

  def test_prolonged_silence
    skip
    assert_equal 'Fine. Be that way!', teenager.hey('    ')
  end

  def test_on_multiple_line_questions
    skip
    assert_equal 'Whatever.', teenager.hey(%{
Does this cryogenic chamber make me look fat?
no})
  end
end
