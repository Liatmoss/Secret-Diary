require 'diary'

describe SecretDiary do
  it 'responds to lock' do
    expect(subject).to respond_to :lock
  end

  it 'raises an error when diary is locked' do
    expect { subject.add_entry("This is an entry") }.to raise_error 'Diary is locked'
  end

  it 'raises an error opening entries when diary is locked' do
    expect { subject.get_entries }.to raise_error 'Diary is locked'
  end

  it 'show entries when diary is unlocked' do
    expect(subject.get_entries).to eq @entries if @locked == false
  end

  it 'add entry when diary is unlocked' do
    expect(subject.add_entry("Hello")).to eq @entries if @locked == false
  end

end
