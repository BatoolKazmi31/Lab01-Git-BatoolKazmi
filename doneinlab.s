# .text
# .globl main
# main
#     li x20, 3        # g = 3
#     li x21, 1        # h = 1
#     li x22, 2        # i = 2
#     li x23, 1        # j = 1

#     add x5, x20, x21 # x5 = g + h
#     add x6, x22, x23 # x6 = i + j
#     sub x19, x5, x6  # f = x5 - x6

# end:
#     j end            # Infinite loop to halt program



# addi x1,x1,5
# addi x2,x0,x0
# addi x1,x2,32
# add x5,x1,x2
# sub x3,x5,5
# sub x6,x1,x3
# sub x7,x2,x1
# add x4,x6,x7
# add x4,x4,x3
# add x4,x5,x3
# add x4,x4,x4
# end:
#     j end      

# .text
# .globl main

# main:
#     li   x20, 5          # a = 5   x20=5
#     li   x21, 0          # b = 0 + 0   x21=0

#     addi x20, x21, 32    # a = b + 32     

#     add  x05, x20, x21    # x5 = a + b
#     addi x22, x05, -5     # d = (a + b) - 5

#     add  x05, x20, x22    # x5 = a + d
#     sub  x06, x21, x20    # x6 = b - a
#     add  x05, x05, x06      # x5 = (a + d) + (b - a)
#     add  x23, x05, x22    # e = ((a + d) + (b - a)) + d

#     add  x05, x20, x21    # x5 = a + b
#     add  x05, x05, x22     # x5 = a + b + d
#     add  x23, x05, x23    # e = a + b + d + e

# end:
#     j end                # Infinite loop
#a=x10 
#b=x11 
#c=x12 



#The registers we used
#a-- x1
#b--x2
#d--x3
#e--x6

# .text 
# .globl main
# main:
#     li x1, 5 #a=5  
#     li x9, 5
#     add x2, x0,x0 #b=0+0 
#     addi x1, x2, 32 #a=b+32
#     add x3, x1 , x2 #d=a+b
#     sub x3, x3, x9 #d=d-5
#     sub x4, x1,x3 #q=a-d
#     sub x5,x2,x1 #p=b-a
#     add x6, x4,x5 #e=q+p
#     add x6, x6, x3 #e=e+d
#     add x6, x6, x1 #e=e+a
#     add x6, x6, x2 #e=e+b
#     add x6, x6, x3 #e=e+d
    
# end:
#     j end



# .text
# .globl main
# main:
#     li  x10, 0x100
#     li  x11, 0x200
#     li  x12, 0x300

# #initializing array a
#     li  x5, 1
#     sb  x5, 0(x10)      #a[0]=1
#     li  x5, 2
#     sb  x5, 1(x10)      #a[1]=2
#     li  x5, 3
#     sb  x5, 2(x10)      #a[2]=3
#     li  x5, 4
#     sb  x5, 3(x10)      #a[3]=4

# #initializing array b
#     li  x6, 10
#     sh  x6, 0(x11)      #b[0]=10
#     li  x6, 20
#     sh  x6, 2(x11)      #b[1]=20
#     li  x6, 30
#     sh  x6, 4(x11)      #b[2]=30
#     li  x6, 40
#     sh  x6, 6(x11)      #b[3]=40

# #computing c[i]=a[i]+b[i] 

#     lb  x5, 0(x10)      #t0=a[0]
#     lh  x6, 0(x11)      #t1=b[0]
#     add x7, x5, x6
#     sw  x7, 0(x12)      #c[0]

#     lb  x5, 1(x10)      #t0=a[1]
#     lh  x6, 2(x11)      #t1=b[1]
#     add x7, x5, x6
#     sw  x7, 4(x12)      #c[1]

#     lb  x5, 2(x10)      #t0=a[2]
#     lh  x6, 4(x11)      #t1=b[2]
#     add x7, x5, x6
#     sw  x7, 8(x12)      #c[2]

#     lb  x5, 3(x10)      #t0=a[3]
#     lh  x6, 6(x11)      #t1=b[3]
#     add x7, x5, x6
#     sw  x7, 12(x12)     #c[3]
# end:
#     j end

