#!/usr/bin/python3
"""
Script to retrieve TODO list progress for a given employee ID
using a REST API
"""

import requests
from sys import argv


if __name__ == "__main__":
    if len(argv) != 2 or not argv[1].isdigit():
        print("Usage: {} <employee_id>".format(argv[0]))
        exit(1)

    employee_id = int(argv[1])

    # fetch data
    user_url = 'https://jsonplaceholder.typicode.com/users/{}'
    tasks_url = 'https://jsonplaceholder.typicode.com/todos?userId={}'

    try:
        user_res = requests.get(user_url.format(employee_id))
        task_res = requests.get(tasks_url.format(employee_id))

        user_data = user_res.json()
        tasks_data = task_res.json()

        # Extracting relevant info
        employee_n = user_data.get('name', 'Unknown Employee')
        total_tasks = len(tasks_data)
        completed_tasks = [task for task in tasks_data if task['completed']]
        num_comp_tasks = len(completed_tasks)

        # Displaying info
        print("Employee {} is done with tasks({}/{}):".format(
              employee_n, num_comp_tasks, total_tasks))

        # Displaying completed task titles
        for task in completed_tasks:
            print("\t{}".format(task['title']))

        # Displaying completed task titles
        for task in completed_tasks:
            print("\t{}".format(task['title']))

    except requests.RequestException as e:
        print("Error fetching data:", str(e))
