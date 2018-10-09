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
    expect(subject.get_entries).to eq true
  end
end
