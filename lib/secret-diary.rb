class SecretDiary
  attr_accessor :locked

  def initialize
    @locked = true
  end

  def lock
  end

  def unlock
  end

  def add_entries
    raise 'Unable to add entry, diary is locked' if @locked == true
  end

  def get_entries
  end
end
