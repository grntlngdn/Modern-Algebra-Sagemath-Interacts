def crt_solution(a,b,m,n):
    if b < n:
        if gcd(m,n).divides(a-b):
            return CRT(a,b,m,n)
    else:
        return x

def hor_axis(i,m):
    if i<m:
        return i
    else:
        return x
