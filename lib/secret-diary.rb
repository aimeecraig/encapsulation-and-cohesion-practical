class SecretDiary
  attr_accessor :locked

  def initialize
    @locked = true
  end

  def lock
    raise 'Diary is already locked.' if @locked == true
    @locked = true
  end

  def unlock
    @locked = false
  end

  def add_entry
    raise 'Unable to add entry, diary is locked' if @locked == true
    true
  end

  def get_entries
    raise 'Cannot get entries, diary is locked.' if @locked == true
    true
  end
end
