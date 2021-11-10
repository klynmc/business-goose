const inquirer = require('inquirer');
const mysql = require('mysql2');

const questions = [
    {
        type: 'list',
        name: 'contents',
        message: 'What would you like to do?',
        choices: ['View all departments', 'View all roles', 'View all employees', 'Add a department', 'Add a role', 'Add an employee', 'Update an employee role']
    },
    {
        type: '',
        name: '',
        message: ''
    }
];

function init() {
    inquirer.prompt(questions)
      .then(function(data) {
        console.log(data)
    })
}

init();