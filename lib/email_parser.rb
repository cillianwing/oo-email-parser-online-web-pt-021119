# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails, :parsed

  def initialize(emails)
    @emails = emails
    @parsed = []
  end

  def parse
    email_array = @emails.split(/[","\s]/).reject { |x| x == ""}
    email_array.each do |email|
      if @parsed.include?(email) == false || @parsed == nil
        @parsed << email
      end
    end
    @parsed
  end

end