Pymol Syntax
============

Syntax rules for pymol scripts in sublime text and other textmate-style text editors. I have only tested in Sublime Text but it should work with any color scheme in any editor that uses .tmlanguage files. Automatically detects the `.pml` extension and applies itself.

This works both with the more standard `command target, options` syntax and the `cmd.command('target', options)` syntax.

## Preview: 
![preview](http://bbarad.github.io/pymol_syntax/screenshot.png)

This preview is using the spacegray theme and color scheme.

## Use:
### Package Control:
Install the package named [Pymol Language](https://sublime.wbond.net/packages/Pymol%20Language) and it should work automatically on `.pml` files.

### Manual:
Copy the `pymol.tmlanguage` file into the user packages folder. On Mac, for sublime text 3, this folder is `~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/pymol.tmLanguage`. After this, it should immediately be applied to all `.pml` files.

## Contributing:
I am using [AAAPackageDev](https://sublime.wbond.net/packages/AAAPackageDev) to convert the YAML file into a plist file which is readable by sublime text. Make your changes in that file, then submit changes as a pull request.

## Citations:
I took inspiration from [Michal Gajda's syntax definition for pymol](http://www.vim.org/scripts/script.php?script_id=2814). If you are looking for a syntax definition for vim, I recommend it.
