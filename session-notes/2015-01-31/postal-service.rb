# Postal Service
#
# mail can be sent from one mailbox to another
# post officer picks up mail from origin mailbox
# post officer delivers mail to destination mailbox

class Mailbox
  def initialize(owner)
    @owner = owner
    @parcels = []
  end

  def add(parcel)
    @parcels << parcel
  end

  def remove_letters!
    contents = @parcels
    @parcels = []

    return contents
  end

  def contains?(parcel)
    @parcels.include?(parcel)
  end

  def empty?
    @parcels.empty?
  end
end

class Letter
  attr_reader :to

  def initialize(contents, envelope)
    @contents = contents
    @to = envelope[:to]
  end
end

class PostalWorker
  def initialize(name)
    @name = name
    @cart = []
  end

  def check(mailbox)
    @cart += mailbox.remove_letters!
  end

  def deliver
    @cart.each do |parcel|
      to_box = parcel.to

      to_box.add(parcel)
    end
  end

  def has_letters?
    @cart.any?
  end
end

# sue and tom each have mailboxes
sues_mailbox = Mailbox.new("Sue")
toms_mailbox = Mailbox.new("Tom")

# sue writes a letter to tom
letter = Letter.new("Hello from Tahiti!", to: toms_mailbox)

sues_mailbox.add(letter)
p sues_mailbox.contains?(letter)

# postman picks up the letter
postman = PostalWorker.new("Fred")

p postman.has_letters? == false
p sues_mailbox.empty? == false

postman.check(sues_mailbox)

p postman.has_letters? == true
p sues_mailbox.empty? == true

# postman delivers the letter
postman.deliver
p toms_mailbox.contains?(letter)
