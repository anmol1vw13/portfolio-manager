# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_506_115_701) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'active_admin_comments', force: :cascade do |t|
    t.string 'namespace'
    t.text 'body'
    t.string 'resource_type'
    t.integer 'resource_id'
    t.string 'author_type'
    t.integer 'author_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[author_type author_id], name: 'index_active_admin_comments_on_author_type_and_author_id'
    t.index ['namespace'], name: 'index_active_admin_comments_on_namespace'
    t.index %w[resource_type resource_id], name: 'index_active_admin_comments_on_resource_type_and_resource_id'
  end

  create_table 'admin_users', force: :cascade do |t|
    t.string 'email', default: '', null: false
    t.string 'encrypted_password', default: '', null: false
    t.string 'reset_password_token'
    t.datetime 'reset_password_sent_at'
    t.datetime 'remember_created_at'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['email'], name: 'index_admin_users_on_email', unique: true
    t.index ['reset_password_token'], name: 'index_admin_users_on_reset_password_token', unique: true
  end

  create_table 'companies', force: :cascade do |t|
    t.string 'name'
    t.string 'registered_name'
    t.date 'founded'
    t.string 'sector'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['registered_name'], name: 'index_companies_on_registered_name', unique: true
  end

  create_table 'company_financials', force: :cascade do |t|
    t.datetime 'date'
    t.integer 'revenue'
    t.integer 'burn'
    t.integer 'closing_cash'
    t.bigint 'company_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_id'], name: 'index_company_financials_on_company_id'
    t.index %w[date company_id], name: 'index_company_financials_on_date_and_company_id', unique: true
  end

  create_table 'founders', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'position'
    t.string 'mobile'
    t.bigint 'company_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['company_id'], name: 'index_founders_on_company_id'
  end

  create_table 'funds', force: :cascade do |t|
    t.string 'name'
    t.string 'key'
    t.date 'formation_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['name'], name: 'index_funds_on_name', unique: true
  end

  create_table 'investment_details', force: :cascade do |t|
    t.integer 'money'
    t.integer 'percentage_holding'
    t.bigint 'investor_id'
    t.bigint 'investment_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[investment_id investor_id], name: 'index_investment_details_on_investment_id_and_investor_id', unique: true
    t.index ['investment_id'], name: 'index_investment_details_on_investment_id'
    t.index ['investor_id'], name: 'index_investment_details_on_investor_id'
  end

  create_table 'investments', force: :cascade do |t|
    t.string 'round'
    t.date 'investment_date'
    t.integer 'pre_money'
    t.bigint 'company_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index %w[company_id round], name: 'index_investments_on_company_id_and_round', unique: true
    t.index ['company_id'], name: 'index_investments_on_company_id'
  end

  create_table 'investor_fund_details', force: :cascade do |t|
    t.integer 'money'
    t.bigint 'fund_id'
    t.bigint 'investor_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['fund_id'], name: 'index_investor_fund_details_on_fund_id'
    t.index %w[investor_id fund_id], name: 'index_investor_fund_details_on_investor_id_and_fund_id', unique: true
    t.index ['investor_id'], name: 'index_investor_fund_details_on_investor_id'
  end

  create_table 'investor_key_members', force: :cascade do |t|
    t.string 'name'
    t.string 'email'
    t.string 'mobile'
    t.bigint 'investor_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['investor_id'], name: 'index_investor_key_members_on_investor_id'
  end

  create_table 'investor_key_people', force: :cascade do |t|
    t.string 'name'
    t.string 'email_id'
    t.string 'mobile'
    t.bigint 'investor_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['investor_id'], name: 'index_investor_key_people_on_investor_id'
  end

  create_table 'investors', force: :cascade do |t|
    t.string 'name'
    t.string 'type'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['name'], name: 'index_investors_on_name', unique: true
  end

  add_foreign_key 'company_financials', 'companies'
  add_foreign_key 'founders', 'companies'
  add_foreign_key 'investment_details', 'investments'
  add_foreign_key 'investment_details', 'investors'
  add_foreign_key 'investments', 'companies'
  add_foreign_key 'investor_fund_details', 'funds'
  add_foreign_key 'investor_fund_details', 'investors'
  add_foreign_key 'investor_key_members', 'investors'
  add_foreign_key 'investor_key_people', 'investors'
end
