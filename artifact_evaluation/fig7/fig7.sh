python3 run_ideal.py  > ideal.log 2>&1 

#ps -aux | grep "run" | grep -v grep | awk '{print $2}' | xargs kill -9

python3 run_reef.py  > reef.log 2>&1

#ps -aux | grep "run" | grep -v grep | awk '{print $2}' | xargs kill -9

python3 run_orion.py  > orion.log 2>&1

#ps -aux | grep "run" | grep -v grep | awk '{print $2}' | xargs kill -9

bash ../../related/baselines/start_MPS_control_daemon.sh 

cd config_files/mps


python3 run.py > run_mpg.log 2>&1 

#ps -aux | grep "run" | grep -v grep | awk '{print $2}' | xargs kill -9 


cd ../..


bash ../../related/baselines/stop_MPS_control_daemon.sh

python3 gather_latency.py

python3 gather_throughput.py

python3 plot_latency.py


python3 plot_latency.py 

