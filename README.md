# Todo Manager CLI Tool

This command-line tool helps you manage a list of todo items. It allows you to add, remove, and view todos using a simple CLI interface. The tool stores todo items in a file located in your home directory under `~/.todos/todos`.

## Requirements

- Lua interpreter

## Installation

1. Copy the script to a location in your PATH.
2. Ensure the script is executable: `chmod +x todo`

## Usage

The tool supports four commands:

- `add`: Adds a new todo item with an optional category.
- `rm`: Removes an existing todo item by its ID.
- `show`: Displays all current todo items, optionally filtered by category.
- `edit`: Edits an existing todo item by its ID.

### Adding a Todo Item

To add a new item to your todo list, use:

```bash
todo add "Your todo item here" [--category=CategoryName] [--verbose]
```

- `--category=CategoryName`: Optional argument to specify a category for the todo item.
- `--verbose`: Optional argument to print additional details about the operation.

For example:

```bash
todo add "Finish project report" --category=Work --verbose

```

### Removing a Todo Item

To remove an item from your todo list by its ID, use:

```bash
todo rm "ItemID" [--verbose]
```

- `ItemID`: The unique identifier of the item to be removed.
- `--verbose`: Optional argument to display more information about the operation.

For example:

```bash
todo rm 1633015043 --verbose
```

### Showing All Todo Items

To display all the items in your todo list, use:

```bash
todo show [--category=CategoryName] [--verbose]
```

- `--category=CategoryName`: Optional argument to filter todos by category.
- `--verbose`: Optional argument to show detailed information, including item IDs and categories.

For example:

```bash
todo show --category=Work --verbose
```

### Editing a Todo Item

To edit an existing item in your todo list, use:

```bash
todo edit "ItemID" "New todo item description" [--category=NewCategory] [--verbose]
```

- `ItemID`: The unique identifier of the item to edit.
- `New todo item description`: The updated description of the todo item.
- `--category=NewCategory`: Optional argument to update the item's category.
- `--verbose`: Optional argument to provide additional details.

For example:

```bash
todo edit "1633015043" "Update project report" --category=Work --verbose
```

### Verbose Mode

The tool also supports a verbose mode which can be activated by appending `--verbose` to any command. This mode provides additional information about the operations performed.

```bash
todo add "Complete daily standup notes" --category=Meetings --verbose
```

### License

This tool is released under the MIT License.
