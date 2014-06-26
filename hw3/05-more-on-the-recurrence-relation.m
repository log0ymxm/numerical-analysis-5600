syms x
innerProduct = @(f,g) int(f*g + diff(f,x)*diff(g,x), x, -1,1)

q0 = 1
q1 = x

innerProduct(q0,q0) % = 2
innerProduct(q1,q1) % = 8/3

innerProduct(q0,q1) % = 0

a2 = innerProduct(x*q1, q1) / innerProduct(q1,q1)
b2 = innerProduct(x*q1, q0) / innerProduct(q0,q0)
q2 = (x - a2)*q1 - b2 * q0

innerProduct(q2, q2) % = 128/45

innerProduct(q2, q0) % = 0
innerProduct(q2, q1) % = 0

a3 = innerProduct(x*q2, q2) / innerProduct(q2,q2)
b3 = innerProduct(x*q2, q1) / innerProduct(q1,q1)
q3 = (x - a3)*q2 - b3 * q1

innerProduct(q3, q3) % = 302/175

innerProduct(q3, q0) % = 0
innerProduct(q3, q1) % = 0
innerProduct(q3, q2) % = 0

a4 = innerProduct(x*q3, q3) / innerProduct(q3,q3)
b4 = innerProduct(x*q3, q2) / innerProduct(q2,q2)
q4 = (x - a4)*q3 - b4 * q2

innerProduct(q4, q4) % = 17257/22050

innerProduct(q4, q0) % = -1/5, non-orthogonal!!!!!
innerProduct(q4, q1) % = 0
innerProduct(q4, q2) % = 0
innerProduct(q4, q3) % = 0