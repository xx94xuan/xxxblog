class Event
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :name, type: String
  field :start_time, type: DateTime, default: '?'
  field :end_time, type: DateTime, default: '?'
  field :description, type: String
  field :updated_at, type: DateTime
  field :created_at, type: DateTime
  field :done, type: Boolean, default: false

  belongs_to :user, dependent: :nullify

  index(time: -1)

  def start_date
    self.start_time ? self.start_time.strftime("%Y-%m-%d") : '?'
  end

  def end_date
    self.end_time ? self.end_time.strftime("%Y-%m-%d") : '?'
  end

  def start_hour
    self.start_time ? self.start_time.strftime("%H:%M") : '?'
  end

  def end_hour
    self.end_time ? self.end_time.strftime("%H:%M") : '?'
  end
end
