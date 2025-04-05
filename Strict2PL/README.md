# Purpose
To verify that Strict Two-Phase Locking (Strict 2PL) guarantees conflict-serializability.Interleaved execution of transactions under the protocol is equivalent to some serial execution (i.e., the operations could have occurred in some order where transactions run one after the other without overlap).

# Correctness Property

## Safety Property - Something bad should never happen
- No two transactions can hold conflicting locks on the same data item at the same time.
- A transaction must hold exclusive locks until commit—no other transaction may read or write those locked items until the transaction commits.
- A transaction cannot read data written by another transaction that hasn't committed yet.

## Liveness Property - Something good must eventually happen
Every transaction that requests a lock and is not in a deadlock situation will eventually either:

- Acquire the lock,
- Proceed to commit, or
- Be rolled back 


# Assumptions 

# Behaviour 


