class Schedule < ApplicationRecord
    has_many :schedule_users
    has_many :users, through: :schedule_users
end
