User.delete_all
Transaction.delete_all
Bank.delete_all


u1 = User.create(name: 'user1', email: 'user1@gmail.com', password: 'a', password_confirmation: 'a' )
u2 = User.create(name: 'user2', email: 'user2@gmail.com', password: 'a', password_confirmation: 'a' )
u3 = User.create(name: 'user3', email: 'user3@gmail.com', password: 'a', password_confirmation: 'a' )
u4 = User.create(name: 'admin', email: 'admin@gmail.com', password: 'a', password_confirmation: 'a' )
u4.is_admin
u4.save

b1 = Bank.create(name: 'bank1', balance: 2000)
b2 = Bank.create(name: 'bank2', balance: 1000)
b3 = Bank.create(name: 'bank3', balance: 3000)
b4 = Bank.create(name: 'bank4', balance: 5000)
b5 = Bank.create(name: 'bank5', balance: 7000)
b6 = Bank.create(name: 'bank6', balance: 8000)

t1  = Transaction.create(amount: 200, transaction_type: 'deposit')
t2  = Transaction.create(amount: 150, transaction_type: 'withdrawal')
t3  = Transaction.create(amount: 352, transaction_type: 'deposit')
t4  = Transaction.create(amount: 234, transaction_type: 'deposit')
t5  = Transaction.create(amount: 150, transaction_type: 'withdrawal')
t6  = Transaction.create(amount: 345, transaction_type: 'deposit')
t7  = Transaction.create(amount: 203, transaction_type: 'deposit')
t8  = Transaction.create(amount: 150, transaction_type: 'withdrawal')
t9  = Transaction.create(amount: 400, transaction_type: 'deposit')
t10 = Transaction.create(amount: 200, transaction_type: 'deposit')
t11 = Transaction.create(amount: 150, transaction_type: 'withdrawal')
t12 = Transaction.create(amount: 400, transaction_type: 'deposit')
t13 = Transaction.create(amount: 200, transaction_type: 'deposit')
t14 = Transaction.create(amount: 10,  transaction_type: 'withdrawal')
t15 = Transaction.create(amount: 40,  transaction_type: 'deposit')
t16 = Transaction.create(amount: 200, transaction_type: 'deposit')
t17 = Transaction.create(amount: 150, transaction_type: 'withdrawal')
t18 = Transaction.create(amount: 40,  transaction_type: 'deposit')

b1.transactions << t1 << t2 << t3
b2.transactions << t4 << t5 << t6
b3.transactions << t7 << t8 << t9
b4.transactions << t10 << t11 << t12
b5.transactions << t13 << t14 << t15
b6.transactions << t16 << t17 << t18

u1.banks << b1 << b2
u2.banks << b3 << b4
u3.banks << b4 << b5

