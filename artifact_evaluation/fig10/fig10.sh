#python3 run_ideal.py > ideal.log 2>&1 

python3 run_reef.py > reef.log 2>&1

python3 run_orion.py > orion.log 2>&1 

bash ../../related/baselines/start_MPS_control_daemon.sh


cd config_files/mps


python3 run.py

cd ../..


bash ../../related/baselines/stop_MPS_control_daemon.sh


python3 gather_results.py > gather.log 2>&1 


python3 plot_latency.py > plog.log 2>&1 


cd /roor

#scp -r orion eurosysae43@34.32.208.139:/home/eurosysae43/copy
