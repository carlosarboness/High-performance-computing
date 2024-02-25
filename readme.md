# FILES ATTACHED
Description and utility of all the files attached to the task.

## Execution files
- The files 'bt.sh', 'sp.sh', and 'lu.sh' are the scripts to be run through sbatch which will execute the corresponding application with all the configurations of the nodes we have chosen.

- The files 'lu4.sh' and 'lu68.sh' are the scripts used to run the lu with runtime schedule with the corresponding nodes (4 in the first file and 6 and 8 in the secont). They were divided because the applications had an execution time over 2 hours.

- The files 'bt-t1.sh', 'sp-t1.sh', and 'lu-t1.sh' are the scripts that execute the baseline of each application that we used to calculate the speedup and efficiency.

- The 'make.def' and 'suite.def' are the files used to compile the applications.

- The 'lu.f' is the code modified in order to run the LU application with runtime schedule.

## Data files
- 'RESULTS-bt.csv', 'RESULTS-SP.csv', and 'RESULTS-lu.csv' correspond to the data corresponding to the calculation of execution time, speedup, and efficiency. The three contain 3 executions of each corresponding program.

- 'info_bt{i}', 'info_sp{i}', and 'info-lu{i}' correspond to the data obtained from the jobs to obtain the Consumed Energy. For i = 1,2,3, there are 3 different executions.

- 'RESULTS-lu_runtime_STATIC.csv' and 'RESULTS-lu_runtime_DYNAMIC.csv' contain the info related to the execution of the lu program with both schedulers.
