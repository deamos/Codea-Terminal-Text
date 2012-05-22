local clock = os.clock
function sleep(n)  -- seconds
  local t0 = clock()
  while clock() - t0 <= n do end
end
-- warning: clock can eventually wrap around for sufficiently large n
-- (whose value is platform dependent).  Even for n == 1, clock() - t0
-- might become negative on the second that clock wraps.
