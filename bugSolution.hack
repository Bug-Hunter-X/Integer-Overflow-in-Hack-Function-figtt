```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  // Check for potential overflow before multiplication
  if (x > (INT_MAX / 2)) { 
    throw new Exception("Integer overflow detected");
  }
  return foo(x) * 2;
}

function baz(x: int): int {
  // Check for potential overflow before subtraction
  if (x > (INT_MAX + 1)) {
    throw new Exception("Integer overflow detected");
  }
  return bar(x) - 1;
}

function main(): void {
  var x: int = 5;
  try {
    var y: int = baz(x);
    echo y;
  } catch (Exception e) {
    echo e->getMessage();
  }
}
```