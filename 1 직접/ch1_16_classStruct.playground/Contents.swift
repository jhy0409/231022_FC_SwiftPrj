import Foundation

class SomeCls {
    var cnt: Int = 0
}

struct SomeStr {
    var cnt: Int = 0
}

var cl_1: SomeCls = .init()
var cl_2 = cl_1
var cl_3 = cl_1

cl_3.cnt = 2
cl_1.cnt

var st_1: SomeStr = .init()
var st_2 = st_1
var st_3 = st_1

st_2.cnt = 2
st_3.cnt = 3

st_1.cnt
st_2.cnt
st_3.cnt

