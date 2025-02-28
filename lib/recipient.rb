class Recipient
  attr_reader :slack_id, :name
  class SlackApiError < Exception
  end

  def initialize(slack_id, name)
    @slack_id = slack_id
    @name = name
  end

  def self.list
    raise NotImplementedError, "Implement me in a child class!"
  end
end