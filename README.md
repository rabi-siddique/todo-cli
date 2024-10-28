# Todo Manager CLI Tool

This command-line tool helps you manage a list of todo items. It allows you to add, remove, and view todos using a simple CLI interface. The tool stores todo items in a file located in your home directory under `~/.todos/todos`.

## Requirements

- Lua interpreter

## Installation

1. Copy the script to a location in your PATH.
2. Ensure the script is executable: `chmod +x todo`

## Usage

The tool supports three commands:

- `add`: Adds a new todo item.
- `rm`: Removes an existing todo item.
- `show`: Displays all current todo items.

### Adding a Todo Item

To add a new item to your todo list, use:

```bash
todo add "Your todo item here"
```

### Removing a Todo Item

To remove an item from your todo list, use:

```bash
todo rm "Your todo item here"
```

### Showing All Todo Items

To display all the items in your todo list, use:

```bash
todo show
```

### Verbose Mode

The tool also supports a verbose mode which can be activated by appending `--verbose` to any command. This mode provides additional information about the operations performed.

```bash
todo add "New item" --verbose
```

### License

This tool is released under the MIT License.
