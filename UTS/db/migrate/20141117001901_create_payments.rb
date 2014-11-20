class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :bill_status
      t.decimal :amount_due
      t.decimal :amount_paid
      t.decimal :balance
      t.date :date_of_payment
      t.date :next_payment_date
      t.text :comment
      t.string :paid_by
      t.references :bill, index: true

      t.timestamps
    end
  end
end
