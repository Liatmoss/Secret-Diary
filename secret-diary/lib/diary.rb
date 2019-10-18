class SecretDiary

  def initialize
    @locked = true
    @entries = []
  end

  def lock
    @locked = true
    p "Diary is locked"
  end

  def unlock
    @locked = false
    p "Diary is unlocked"
  end

  def add_entry(entry)
    fail 'Diary is locked' if @locked == true
    @entries << entry if @locked == false
  end

  def get_entries
    fail 'Diary is locked' if @locked == true
    @entries
  end
end
