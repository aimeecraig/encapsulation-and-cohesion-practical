require 'secret-diary'

describe SecretDiary do
  it 'raises an error when trying to add_entry to a new diary' do
    expect { subject.add_entry }.to raise_error 'Unable to add entry, diary is locked'
  end

  it 'returns false when calling unlock' do
    expect(subject.unlock).to eq false
  end

  it 'returns true when calling add_entry' do
    subject.unlock
    expect(subject.add_entry).to eq true
  end

  it 'returns true when calling get_entries' do
    subject.unlock
    expect(subject.get_entries).to eq true
  end

  it 'raises an error when trying to add_entry to locked diary' do
    expect { subject.add_entry }.to raise_error 'Unable to add entry, diary is locked'
  end

  it 'raises an error when trying to lock a locked diary' do
    expect { subject.lock }.to raise_error 'Diary is already locked.'
  end

  it 'raises an error when trying to get_entries from a locked diary' do
    expect { subject.get_entries }.to raise_error 'Cannot get entries, diary is locked.'
  end
end
