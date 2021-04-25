class Post < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :summary, presence: true, length: { maximum: 200}
  validates :body, presence: true, length: { minimum: 100}
  validates :active, inclusion: [true, false]

  # belongs_to :user
  belongs_to :category
  belongs_to :account
  # has_many :comments

  # if terms and conditions need to be true
  # validates :terms_of_service, acceptance: true

  # number validation
  # validates :rating, numericality: true
  # validates :views, numericality: { only_integer: true}

  # callbacks - validation / save / create / update / destroy
  after_create :update_total_posts_count

  scope :active, -> { where( active: true )}
  scope :order_by_latest_first, -> { order( created_at: :desc ) }
  scope :limit_5, -> { limit(5)}


  # instance method
  def details
    "This post was created on #{ created_at.strftime('%d.%m.%Y') }"
  end

  # class method
  def self.total
    # returns total number of posts
    count
  end

  private

  def update_total_posts_count
    category.increment(:total_count, 1).save
  end
end
