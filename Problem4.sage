
def arrayElem(m,n,r,a):

    if len(r)>m:

        if len(r[m])>n:

            r[m][n]=a

            return r

        elif len(r[m])==n:

            r[m][n:n]=[a]

            return r

        else:

            print "error"

    elif (len(r)==m)&(n==0):

        r[m:m]=[[a]]

        return r

    else:

        print "error"



def factorInPartsC(nL,lFactor):

    r=[[]]

    i=0

    j=0

    c=0

    k=[[0]]

    while j>=0:

        if j==0:

            w=lFactor

        else:

            w=lFactor

            for m in range (j):

                w=w/r[i][m]

        if j<nL-1:

            r=arrayElem(i,j,r,(divisors(w)[sigma(w,0)-k[i][j]-1]))

        else:

            r=arrayElem(i,j,r,w)

        if lFactor==1:

            r=[[]]

            i=1

            for i2 in range(nL):

                r[0][i2:i2]=[1]

            j=j-1

        elif (j>0)&(i==0):

            if r[i][j]>r[i][j-1]:

                k=arrayElem(i,j,k,k[i][j]+1)

            elif r[i][j]<(w)^(1/(nL-j)):

                k=arrayElem(i,j-1,k,k[i][j-1]+1)

                j=j-1

            elif nL-1==j:

                i=i+1

                j=j-1

                for m in range(j):

                    k=arrayElem(i,m,k,k[i-1][m])

                    r=arrayElem(i,m,r,r[i-1][m])

                k=arrayElem(i,j,k,k[i-1][j]+1)

            else:

                j=j+1

                k=arrayElem(i,j,k,0)

        elif (j>0)&(i>0):

            if r[i][j]>r[i][j-1]:

                k=arrayElem(i,j,k,k[i][j]+1)

            elif (r[i][j]<n((w)^(1/(nL-j))))|((w==1)&(r[i][0:j]==r[i-1][0:j])):

                k=arrayElem(i,j-1,k,k[i][j-1]+1)

                j=j-1

            elif nL-1==j:

                i=i+1

                j=j-1

                for m in range(j):

                    k=arrayElem(i,m,k,k[i-1][m])

                    r=arrayElem(i,m,r,r[i-1][m])

                k=arrayElem(i,j,k,k[i-1][j]+1)

            else:

                j=j+1

                k=arrayElem(i,j,k,0)

        else:

            if r[i][j]<(w)^(1/(nL-j)):

                j=j-1

            elif nL==1:

                j=j-1

                i=1

            else:

                j=j+1

                k=arrayElem(i,j,k,0)

        if (i==10):

            j=-1

            c=1

    r=r[0:i]

    return c



def factorInParts(nL,lFactor):

    r=[[]]

    i=0

    j=0

    c=0

    k=[[0]]

    while j>=0:

        if j==0:

            w=lFactor

        else:

            w=lFactor

            for m in range (j):

                w=w/r[i][m]

        if j<nL-1:

            r=arrayElem(i,j,r,(divisors(w)[sigma(w,0)-k[i][j]-1]))

        else:

            r=arrayElem(i,j,r,w)

        if lFactor==1:

            r=[[]]

            i=1

            for i2 in range(nL):

                r[0][i2:i2]=[1]

            j=j-1

        elif (j>0)&(i==0):

            if r[i][j]>r[i][j-1]:

                k=arrayElem(i,j,k,k[i][j]+1)

            elif r[i][j]<(w)^(1/(nL-j)):

                k=arrayElem(i,j-1,k,k[i][j-1]+1)

                j=j-1

            elif nL-1==j:

                i=i+1

                j=j-1

                for m in range(j):

                    k=arrayElem(i,m,k,k[i-1][m])

                    r=arrayElem(i,m,r,r[i-1][m])

                k=arrayElem(i,j,k,k[i-1][j]+1)

            else:

                j=j+1

                k=arrayElem(i,j,k,0)

        elif (j>0)&(i>0):

            if r[i][j]>r[i][j-1]:

                k=arrayElem(i,j,k,k[i][j]+1)

            elif (r[i][j]<n((w)^(1/(nL-j))))|((w==1)&(r[i][0:j]==r[i-1][0:j])):

                k=arrayElem(i,j-1,k,k[i][j-1]+1)

                j=j-1

            elif nL-1==j:

                i=i+1

                j=j-1

                for m in range(j):

                    k=arrayElem(i,m,k,k[i-1][m])

                    r=arrayElem(i,m,r,r[i-1][m])

                k=arrayElem(i,j,k,k[i-1][j]+1)

            else:

                j=j+1

                k=arrayElem(i,j,k,0)

        else:

            if r[i][j]<(w)^(1/(nL-j)):

                j=j-1

            elif nL==1:

                j=j-1

                i=1

            else:

                j=j+1

                k=arrayElem(i,j,k,0)

        if (i==10):

            j=-1

            c=1

    r=r[0:i]

    return r


def factorIrrC(b,p):

    d=0

    c=0

    while (b%p)==0:

        b=b/p

        d=d+1

    s=floor(d/6)

    r=d%6

    if r==1:

        s=s-1

    facs=[]

    for t in range(s+1):

        if (r%2)==0:

            nCube=2*t

        else:

            nCube=2*t+1

        if (r%3)==0:

            nSquare=3*(s-t)

        elif (r%3)==1:

            nSquare=3*(s-t)+2

        else:

            nSquare=3*(s-t)+1

        if nCube>0:

            if nSquare>0:

                for i in range(sigma(b,0)):

                    part1=divisors(b)[i]

                    part2=b/part1

                    cFacs=[]

                    for j in range(len(factorInParts(nCube,part1))):

                        cFacs[j:j]=[[]]

                        for j2 in range (nCube):

                            cFacs[j][j2:j2]=[p^3*factorInParts(nCube,part1)[j][j2]]

                    c=c+factorInPartsC(nCube,part1)+factorInPartsC(nSquare,part2)

                    sFacs=[]

                    j3=0

                    j=0

                    while (j3<10)&(j<len(factorInParts(nSquare,part2))):

                        sFacs[j:j]=[[]]

                        for j2 in range (nSquare):

                            sFacs[j][j2:j2]=[p^2*factorInParts(nSquare,part2)[j][j2]]

                        for j2 in range (len(factorInParts(nCube,part1))):

                            facs=facs+[sFacs[j]+cFacs[j2]]

                            j3=j3+1

                        j=j+1

                        if j3>9:

                            c=1

            else:

                cFacs=[]

                for j in range(len(factorInParts(nCube,b))):

                    cFacs[j:j]=[[]]

                    for j2 in range (nCube):

                        cFacs[j][j2:j2]=[p^3*factorInParts(nCube,b)[j][j2]]

                facs=facs+cFacs

                c=c+factorInPartsC(nCube,b)

        else:

            sFacs=[]

            for j in range(len(factorInParts(nSquare,b))):

                sFacs[j:j]=[[]]

                for j2 in range (nSquare):

                    sFacs[j][j2:j2]=[(p^2)*factorInParts(nSquare,b)[j][j2]]

            facs=facs+sFacs

            c=c+factorInPartsC(nSquare,b)

        if (nSquare==0)&(nCube==0):

            print "error"

    if c>0:

        c=1

    return c


def factorIrr(b,p):

    d=0

    c=0

    while (b%p)==0:

        b=b/p

        d=d+1

    s=floor(d/6)

    r=d%6

    if r==1:

        s=s-1

    facs=[]

    for t in range(s+1):

        if (r%2)==0:

            nCube=2*t

        else:

            nCube=2*t+1

        if (r%3)==0:

            nSquare=3*(s-t)

        elif (r%3)==1:

            nSquare=3*(s-t)+2

        else:

            nSquare=3*(s-t)+1

        if nCube>0:

            if nSquare>0:

                for i in range(sigma(b,0)):

                    part1=divisors(b)[i]

                    part2=b/part1

                    cFacs=[]

                    for j in range(len(factorInParts(nCube,part1))):

                        cFacs[j:j]=[[]]

                        for j2 in range (nCube):

                            cFacs[j][j2:j2]=[p^3*factorInParts(nCube,part1)[j][j2]]

                    c=c+factorInPartsC(nCube,part1)+factorInPartsC(nSquare,part2)

                    sFacs=[]

                    j3=0

                    j=0

                    while (j3<10)&(j<len(factorInParts(nSquare,part2))):

                        sFacs[j:j]=[[]]

                        for j2 in range (nSquare):

                            sFacs[j][j2:j2]=[p^2*factorInParts(nSquare,part2)[j][j2]]

                        for j2 in range (len(factorInParts(nCube,part1))):

                            facs=facs+[sFacs[j]+cFacs[j2]]

                            j3=j3+1

                        j=j+1

                        if j3>9:

                            c=1

            else:

                cFacs=[]

                for j in range(len(factorInParts(nCube,b))):

                    cFacs[j:j]=[[]]

                    for j2 in range (nCube):

                        cFacs[j][j2:j2]=[p^3*factorInParts(nCube,b)[j][j2]]

                facs=facs+cFacs

                c=c+factorInPartsC(nCube,b)

        else:

            sFacs=[]

            for j in range(len(factorInParts(nSquare,b))):

                sFacs[j:j]=[[]]

                for j2 in range (nSquare):

                    sFacs[j][j2:j2]=[(p^2)*factorInParts(nSquare,b)[j][j2]]

            facs=facs+sFacs

            c=c+factorInPartsC(nSquare,b)

        if (nSquare==0)&(nCube==0):

            print "error"

    if c>0:

        c=1

    return facs

