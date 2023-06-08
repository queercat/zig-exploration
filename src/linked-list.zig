const std = @import("std");

pub fn LinkedList(comptime T: type) type {
  return struct {
    const Node = struct {
      value: T,
      next: ?*Node = null,

      fn append (node: Node, next_node: *Node) void {
        if (node.next == null) {
          node.next = next_node;
        } else {
          node.next.append(next_node);
        }
      }
    };
  };
}

pub fn main() !void {
  const i32List = LinkedList(i32);
  const head = i32List.Node{ .value = 1 };

  while (head.next != null) {
    std.debug.print("{}", .{head.value});
  }
}