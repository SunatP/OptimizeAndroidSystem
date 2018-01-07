# I/O Scheduler (on Note 4 with custom Kernel)

## This is my Record by Custom kernel 


### CFQ

Completely Fair Queuing scheduler maintains a scalable per-process I/O queue and attempts to distribute the available I/O bandwidth equally among all I/O requests. Each per-process queue contains synchronous requests from processes. Time slice allocated for each queue depends on the priority of the 'parent' process. V2 of CFQ has some fixes which solves process' i/o starvation and some small backward seeks in the hope of improving responsiveness.

Benefits:
- Generally performs the best in throughput tests
- Very stable, is the default Linux kernel I/O scheduler for many desktops and mobile devices
- Performs well on spinning storage and even on solid state storage for mixed workloads
- Generally seen as well balanced
- Processes requiring more I/O resources can be prioritised higher (such as indexing, system maintenance)

Disadvantages:
- I/O latency can be somewhat poor
- There is some scheduling overhead, although probably not too noticeable in tests and real world usage

The bottom line: One of the best all-rounder I/O schedulers available. CFQ is better suited for traditional hard disks, however it may give better throughput under some situations.


### Deadline

The goal of the Deadline scheduler is to attempt to guarantee a start service time for a request. It does that by imposing a deadline on all I/O operations to prevent starvation of requests. It also maintains two deadline queues, in addition to the sorted queues (both read and write). Deadline queues are basically sorted by their deadline (the expiration time), while the sorted queues are sorted by the sector number.

Before serving the next request, the Deadline scheduler decides which queue to use. Read queues are given a higher priority, because processes usually block on read operations. Next, the Deadline scheduler checks if the first request in the deadline queue has expired. Otherwise, the scheduler serves a batch of requests from the sorted queue. In both cases, the scheduler also serves a batch of requests following the chosen request in the sorted queue.

Benefits:
- Excels in reducing latency of any given single I/O
- Can perform better than CFQ in certain workloads
- Performs well in (most) benchmarks
- Generally low scheduling overhead
- Very stable, default in recent Linux kernel versions

Disadvantages:
- Less I/O throughput than CFQ
- No ability to prioritise I/O bound processes over others

The bottom line: A good all-round scheduler. If you want good performance, you should try deadline. 


### SIO (Simple I/O)

Simple I/O aims to keep minimum overhead to achieve low latency to serve I/O requests. No priority queue concepts, but only basic merging. SIO is a mix between Noop & deadline. No reordering or sorting of requests.

Benefits:
- Generally low I/O latency, better for responsiveness
- Very stable

Disadvantages:
- Performs poorly in benchmarks

The bottom line: One of my favourite schedulers, it is a good all-round scheduler. People who want better performance should avoid using this. 

### Noop

Inserts all the incoming I/O requests to a First In First Out queue and implements request merging. Best used with storage devices that does not depend on mechanical movement to access data (yes, like our flash drives). Advantage here is that flash drives does not require reordering of multiple I/O requests unlike in normal hard drives.

Benefits:
- Low I/O latency, better responsiveness
- Very low scheduling overhead
- Very stable, used as default for some systems with solid state drives

Disadvantages:
- Performs poorly in benchmarks

The bottom line: Modern smartphones now use Noop as the default scheduler due to the fact that it works quite well with flash based storage. However older devices may experience slower performance when selected. If you want a very simple I/O scheduler algorithm (because of battery life or latency reasons), you can select this.



### VR

Based on the original SIO scheduler with improvements. Functionality for specifying the starvation of async reads against sync reads; starved write requests counter only counts when there actually are write requests in the queue; fixed a bug).

Benefits:
- Better I/O latency than SIO in certain workloads

Disadvantages:
- Still performs about the same as SIO in benchmarks

The bottom line: If you liked SIO, you will like SIOplus. It performs slightly better in some usage case scenarios, but performance seekers should look else where. 


### SIOplus

Based on the original SIO scheduler with improvements. Functionality for specifying the starvation of async reads against sync reads; starved write requests counter only counts when there actually are write requests in the queue; fixed a bug).

Benefits:
- Better I/O latency than SIO in certain workloads

Disadvantages:
- Still performs about the same as SIO in benchmarks

The bottom line: If you liked SIO, you will like SIOplus. It performs slightly better in some usage case scenarios, but performance seekers should look else where. 
### Tripndroid

A new I/O scheduler based on Noop, deadline and vr and meant to have minimal overhead. Made by TripNRaVeR

Benefits:
- Excels in I/O latency, good for responsiveness, sometimes better with some tuning
- Should be stable, however is not adopted widely
- Generally seen as well balanced

Disadvantages:
- There is some scheduling overhead, but less than CFQ

The bottom line: Tripndroid isn't very common. There are other schedulers you can choose which may perform similar or better. However it is a good all-round scheduler. 
