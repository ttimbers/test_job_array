#PBS -S /bin/bash	
#PBS –l	procs=1	
#PBS –t	1-10	
#PBS -l	wall/me=10:00	
#PBS -m	abe
#PBS –M	ttimbers@sfu.ca
#PBS –N	myjob

cd $PBS_O_WORKDIR	
export $MYOUTPUT=$PBS_JOBNAME-$PBS_ARRAYID	
echo “This jobs	name is:$PBS_JOBNAME” > $MYOUTPUT	
echo “This jobs jobid is:$PBS_JOBID” >>	$MYOUTPUT	
echo “This jobs arrayid	is: $PBS_ARRAYID” >> $MYOUTPUT	
echo	“This jobs is running on host: $PBS_O_HOST” >> $MYOUTPUT
sleep 100; #Replace with a line	running	code
