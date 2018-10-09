require 'secret-diary'

describe SecretDiary do
  it 'raises an error when trying to add_entry to a new diary' do
    expect { subject.add_entries }.to raise_error 'Unable to add entry, diary is locked'
  end

  it 'returns false when calling unlock' do
    expect(subject.unlock).to eq false
  end
end
