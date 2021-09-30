const print = @import("std").debug.print;
const expect = @import("std").testing.expect;

const arr = [3]i32{1, 2, 3};
var sl = [_]i32{1, 2, 3, 5};
var arr_strings = [_][]const u8{"demonkingswarn", "is", "the", "man"};

pub fn main() void {
    const i : i32 = 8;
    var str = "world 2";
    print("hello {s} {}\n", .{str, i});   

    for (arr_strings) | val, ind | {
        print("\t {} - {s}\n", .{ind, val});
    } 

    var m: u64 = 0;
    while (m <= sl.len - 1) {
        print("\t\t{}\n", .{sl[m]});
        m += 1;
    }

}

test "my_test" {
    var i : i32 = 9;
    i += 1;
    try expect(i == 10);
}

test "test_array" {
    try expect(arr.len == 3);
    try expect(sl.len == 4);
    try expect(arr_strings.len == 4);
}