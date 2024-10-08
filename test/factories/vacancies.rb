# frozen_string_literal: true

# == Schema Information
#
# Table name: vacancies
#
#  id                           :integer          not null, primary key
#  about_company                :string
#  about_project                :string
#  cancelation_reason           :string
#  city_name                    :string
#  company_name                 :string
#  conditions_description       :text
#  contact_email                :string
#  contact_name                 :string
#  contact_phone                :string
#  contact_telegram             :string
#  employment_type              :string
#  experience_description       :string
#  kind                         :string           not null
#  link_for_contact             :string
#  locale                       :string
#  location                     :string
#  location_of_position         :string
#  position_level               :string
#  programming_language         :string
#  published_at                 :datetime
#  requirements_description     :string
#  responsibilities_description :string
#  salary_amount_type           :string
#  salary_currency              :string
#  salary_from                  :integer
#  salary_to                    :integer
#  site                         :string
#  state                        :string
#  title                        :string
#  created_at                   :datetime         not null
#  updated_at                   :datetime         not null
#  country_id                   :integer
#  creator_id                   :integer          not null
#  external_id                  :integer
#
# Indexes
#
#  index_vacancies_on_country_id   (country_id)
#  index_vacancies_on_creator_id   (creator_id)
#  index_vacancies_on_external_id  (external_id)
#
# Foreign Keys
#
#  country_id  (country_id => countries.id)
#  creator_id  (creator_id => users.id)
#
FactoryBot.define do
  factory :vacancy do
    title { 'MyString' }
    salary_from { '3000' }
    programming_language { 'php' }
    city_name { 'MyString' }
    company_name { 'MyString' }
    site { 'https://ru.hexlet.io' }
    contact_name { 'MyString' }
    contact_telegram { 'MyString' }
    contact_phone { 'MyString' }
    responsibilities_description { 'MyString' }
    salary_amount_type { :net }
  end
end
