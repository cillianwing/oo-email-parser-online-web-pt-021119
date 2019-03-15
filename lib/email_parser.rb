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
  # .split to create array of emails. .reject needed to remove extra blank array elements created by regex used. Need to find better way of doing this.
    email_array = @emails.split(/[","\s]/).reject { |x| x == ""}
  # iterate through new array to add only unique items to @parsed array
    email_array.each do |email|
      if @parsed.include?(email) == false || @parsed == nil
        @parsed << email
      end
    end
    @parsed
  end

end