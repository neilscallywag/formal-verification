
--------------------------- MODULE StrictTwoPhaseLocking.tla ---------------------------

EXTENDS Naturals, FiniteSets, Sequences

CONSTANTS
  Transactions,    \* Set of transaction IDs
  DataItems        \* Set of shared data items

VARIABLES
  pc,              \* Program counter: transaction state
  locks,           \* Current lock table 
  lockOrder,       \* <<tx, item>> list tracking lock acquisition order
  committed        \* Set of committed transactions

\* Transaction states
TxStates == {"start", "growing", "shrinking", "committed"}

\* Lock representation
LockType == {"none", "X"}