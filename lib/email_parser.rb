# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :addresses

    def initialize addresses
        @addresses = addresses
    end

    def parse
        self.addresses.split.join(",").split(",").select do |address|
            address != ""
        end.uniq
    end
end