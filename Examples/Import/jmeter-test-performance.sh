#!/bin/bash
jmeter -n -t test_plan.jmx -l results.jtl -e -o /path_to_output_folder
