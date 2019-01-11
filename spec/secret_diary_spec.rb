require 'secret_diary'

describe SecretDiary do 
	it "causes locked diary to throw an error when ADDING an entry" do
	diary = SecretDiary.new
	diary.unlock
	diary.lock
	expect { diary.add_entry('test entry') }.to raise_error 'You cannot ADD an entry, the diary is locked'
		#add_entry on locked diary throws an error
		#diary starts locked
	end

	it "causes locked diary to throw an error when GETTING an entry" do
	diary = SecretDiary.new
	diary.unlock
	diary.lock
	expect { diary.get_entries }.to raise_error 'You cannot GET the entries, the diary is locked'
		#add_entry on locked diary throws an error
		#diary starts locked
	end

	it "adds an entry if the diary is unlocked" do
	diary = SecretDiary.new
	diary.unlock
	expect(diary.add_entry('test entry')).to eq 'test entry'
	end

	it "gets entries if the diary is unlocked" do
	diary = SecretDiary.new
	diary.unlock
	expect(diary.get_entries).to eq diary.entries
	end
end