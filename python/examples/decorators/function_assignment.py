say = print
say("Hello World")

print = lambda n: n**n
res = print(3)
say("Hi")
say(res)


def add(x, y):
    return x + y

combine = add

say( combine(2, 3) )
