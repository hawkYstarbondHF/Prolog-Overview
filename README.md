# Prolog Overview for Programming Languages

## Installing

To install Prolog on GitHub codespaces, use the following sequence of commands (responding appropriately to any prompts along the way):

```
sudo apt-add-repository ppa:swi-prolog/stable
sudo apt-get update
sudo apt-get install swi-prolog
```

To install Prolog on your personal system, you can access Windows downloads [here](https://www.swi-prolog.org/download/daily/bin/) or install Prolog on a Mac using [these instructions](https://www.swi-prolog.org/build/macos.html).

## Running

Once Prolog is installed, you can interact with the code by running this command.

```
swipl PrologOverview.pl
```

At the prompt inside of the SWI-Prolog interpreter, you can execute this command to evaluate all exercises:

```
main.
```

To exit the interpreter, use this command:

```
halt.
```

To simply launch the `main` predicate from the command line with a single command, use `run.bat`. From Windows PowerShell, execute:

```
.\run.bat
```

From Mac/Linux systems, including codespaces, execute:

```
bash run.bat
```

## Testing

Unit tests are executed with `test.bat`. From Windows Powershell, execute:

```
.\test.bat
```

From Mac/Linux systems, including codespaces, execute:

```
bash test.bat
```

Do not use the `halt` command anywhere in your code, as this can interfere with unit tests, causing them to terminate before completion.

## Project Objectives

TODO: Explain the point of this assignment in your own words with a brief paragraph. Say what the code does.

## Files

TODO: Bulleted list with brief description of each file

## Known Issues

TODO: Describe any problems with your submission, or indicate that you believe everything functions correctly.

## Author

**Eleanor Wagner**
