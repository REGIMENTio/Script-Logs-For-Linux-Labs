#!/bin/bash

# Start a background job
sleep 60 &
job_pid=$!

echo "Background job started with PID $job_pid"

# Wait for the job to finish
wait $job_pid

echo "Job completed."

