-- rudimentary tests for luaex.
-- Submitted to luaex by LuaDist, D.Manura.

require 'ex'
if os.getenv('OS'):match('^Windows.*') then
  local proc = os.spawn{'notepad.exe'}
  os.sleep(1)
  print(proc)
  proc:kill()
  while tostring(proc):match('.*running.*') do
    print('still running')
  end
  assert(proc:wait() == 0)
else
  print('not on windows')
end
print 'OK'

