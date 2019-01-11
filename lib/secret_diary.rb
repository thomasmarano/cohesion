class SecretDiary
		attr_writer :locked 
		attr_reader :entries

		def initialize
				@locked = true
				@entries = []
		end

		def add_entry(entry)
				fail 'You cannot ADD an entry, the diary is locked' if @locked
				@entries.push(entry)[0]
		end

		def get_entries
				fail 'You cannot GET the entries, the diary is locked' if @locked
				@entries
		end

		def unlock
				@locked = false
		end

		def lock
				@locked = true
		end
end