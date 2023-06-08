const std = @import("std");

pub fn main() !void {
    var text = "Hello, world!";
    std.debug.print("{s}", .{text});
}
