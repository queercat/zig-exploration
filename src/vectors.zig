const std = @import("std");
const ArrayList = std.ArrayList;

pub fn main() !void {
  const allocator = std.heap.page_allocator;
  var list = ArrayList(u64).init(allocator);
  defer list.deinit();
  for (0..10) |i| {
    try list.append(@as(u64, i));
  }
  for (list.items) |item| {
    std.debug.print("{}\n", .{item});
  }
}
