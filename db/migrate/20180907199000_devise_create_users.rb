# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[5.1]

  def change

    create_table :users do |t|

      #Fields
      t.bigint  :document
      t.date    :expedition_date
      t.string  :expedition_place
      t.string  :first_name
      t.string  :second_name
      t.string  :first_lastname
      t.string  :second_lastname
      t.date    :born_date
      t.string  :personal_mail
      t.string  :corporative_mail
      t.string  :telephone
      t.string  :celphone
      t.string  :address

      #Dependences
      t.belongs_to  :identification_types, index: true
      t.belongs_to  :departaments, index: true
      t.belongs_to  :cities, index: true
      t.belongs_to  :areas, index: true
      t.belongs_to  :charges, index: true
      t.belongs_to  :genres, index: true
      t.belongs_to  :generation_ranges, index: true

      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps null: false

    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token,   unique: true
    # add_index :users, :unlock_token,         unique: true

  end

end
