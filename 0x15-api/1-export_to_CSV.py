#!/usr/bin/python3
"""
Accessing a REST API for todo lists of employees
and exporting to CSV
"""

import requests
import csv
import sys


def fetch_user(employee_id):
    url = "https://jsonplaceholder.typicode.com/users/{}"
    res = requests.get(url.format(employee_id))
    res.raise_for_status()
    return (res.json())


def fetch_todo(employee_id):
    url = "https://jsonplaceholder.typicode.com/users/{}/todos"
    res = requests.get(url.format(employee_id))
    res.raise_for_status()
    return (res.json())

def export_to_csv(employee_id, employee_name, tasks):
    filename = "{}.csv".format(employee_id)

    with open(filename, mode='w', newline='') as csv_file:
        fieldnames = ['USER_ID', 'USERNAME', 'TASK_COMPLETED_STATUS',
                      'TASK_TITLE']
        writer = csv.DictWriter(csv_file, fieldnames=fieldnames,
                                quoting=csv.QUOTE_ALL)

        writer.writeheader()
        for task in tasks:
            writer.writerow({"USER_ID": employee_id,
                             "USERNAME": employee_name,
                             "TASK_COMPLETED_STATUS": str(task.get(
                                                          "completed")),
                             "TASK_TITLE": task.get('title')
                             })
    print("Data exported to {}".format(filename))


if __name__ == '__main__':
    if len(sys.argv)!= 2 or not sys.argv[1].isdigit():
        print("Usage: {} <employee_id>".format(sys.argv[0]))

    employee_id = sys.argv[1]

    try:
        user_data = fetch_user(employee_id)
        employee_name = user_data.get('name')

        tasks = fetch_todo(employee_id)

        print("Employee {} is done with tasks({}/{}):".format(
              employee_name, sum(task['completed'] for task in tasks),
                                 len(tasks)))
        for task in tasks:
            print("\t{}".format(task['title']))

        export_to_csv(employee_id, employee_name, tasks)

    except requests.RequestException as e:
        print("Error: {}".format(e))
