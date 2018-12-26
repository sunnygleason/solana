TAIL LEDGER FILE

GOAL:

* placeholder for future, more robust implementation
* allow bridging to websocket/other protocols cleanly
* enable streaming development


IMPLEMENTATION:

* keep track of data file length
* update at most 1000 / DELAY times/s
* lazy update
* keep last_checked_time, last_length

PSEUDOCODE

if data_read + rec_length < last_length
  return next_entry()
else
  loop
    last_checked_time = nanotime()
    cur_length = length(FILE)
    if (cur_length < last_length + rec_length)
      sleep DELAY (200ms)
    else
      return next_entry()

