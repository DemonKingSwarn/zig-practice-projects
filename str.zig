const print = @import("std").debug.print;
const std = @import("std");
const String = @import("./zig-strings.zig").String;
const ArenaAllocator = std.heap.ArenaAllocator;

pub fn main() !void {
    var arena = ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    var myString = String.init(&arena.allocator);
    defer myString.deinit();

    try myString.concat("hello, world : buddy");
    print("{s}\n", .{myString.str()});

    print("{s}\n", .{myString.split(":", 0)});

    print("{}\n", .{myString.find("buddy")});

    if(myString.find("dog") != null) {
        print("you have a dog", .{});
    } else {
        print("you do NOT have a dog\n", .{});
    }
}