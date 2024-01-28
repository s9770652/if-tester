This UPMEM PIM code contains two very slimmed down (and thus unfunctional) merge functions.
Their only difference lies in the order of two if statements.
Notice the different run times:
```
TIME (in front):  21519.67 ms
TIME (in back):   20970.70 ms
```
The time differences remain even if only one of the functions is executed or their execution order changes.
(The `front`/`back` part refers to the positioning of the `if (i == BLOCK_LENGTH)` statement.)

The files `task_front.s` and `task_back.s` contain the compilation with one of the functions commented out in each case.
Note that in `task_back.s` all occurrences of the word `back` have been replaced by `front` to avoid unnecessary differences between the files.

Differences noticed so far:
* In the `front` version, the counter `j` is kept on the stack.
  This results in a load operation at the start and a store operation at the end of each iteration.
* In the `back` version, the index `i` is incremented after checking the first if statement.
  This makes sense as it will save a couple of wasted additions in case the second if statement is never reached.
  Forcing the addition through adding a dummy variable in which to store `i` does not make this version slower than the other one, though.
* Curiously, with `-O1` optimisation, there is no significant difference in run times.
  The total run times are bigger then, of course.
