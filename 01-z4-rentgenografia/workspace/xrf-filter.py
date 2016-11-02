
import sys

step = 100

with open(sys.argv[1] , 'r') as f:
    lines = f.readlines()[37:]
    split = lambda l: l.split("\t")
    mknum = lambda s: [ int(float(s[0].replace(",", "."))*step), s[1] ]
    result = map(mknum, map(split, lines))
    def reductor(acc, e):
        if e[0] in acc:
            acc[e[0]] = acc[e[0]] + e[1]
        else:
            acc[e[0]] = e[1]
        return acc
    data = reduce(reductor, result, {})
    for k,v in data.iteritems():
        print float(k)/step, v
