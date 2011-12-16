Factory.define :user do |f|
  f.sequence(:username) { |n| "user#{n}" }
  f.sequence(:email) { |n| "user#{n}@foo.com" }
  f.password "password"
  f.password_confirmation "password"
end

Factory.define :lead do |f|
  f.sequence(:name) { |n| "name#{n}" }
  f.sequence(:company) { |n| "company#{n}" }
  f.sequence(:email) { |n| "name#{n}@example.com" }
end