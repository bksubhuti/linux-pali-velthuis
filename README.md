# m17-pali-velthuis
This provides an input database for typing Pali. The method used is Velthuis, which is a way to write Pali using the limited ASCII character set.

## Keymap
The mapping is as follows:

```
AA -> Ā
aa -> ā
II -> Ī
ii -> ī
UU -> Ū
uu -> ū
"N -> Ṅ
"n -> ṅ
.M -> Ṃ
.m -> ṃ
~N -> Ñ
~n -> ñ
.T -> Ṭ
.t -> ṭ
.D -> Ḍ
.d -> ḍ
.N -> Ṇ
.n -> ṇ
.L -> Ḷ
.l -> ḷ
```

## Use with IBus
IBus is an input method framework used by many GNU/Linux distributions. It provides a system-wide method for typing a language for which you don't have keys on your keyboard. Here are some instructions for getting this system to work with Pali.

### Install IBus
On debian-like systems (including ubuntu) this is accomplished by installing the ibus and ibus-m17n package:

```
sudo apt-get install ibus ibus-m17n
```

Other distros will have other but similar ways of installing packages.

### Install the database file
Create the directory `.m17n/` in your homedir if it isn't already there:

```
mkdir -p ~/.m17n.d
```

Copy the `pali-velthuis.mim` file into the `~/.m17n/`:
```
cp pali-velthuis.mim ~/.m17n.d/
```

Log out and back in to ensure the file gets picked up by the system.

You should now be able to add "Pali (velthuis (m17n))" as an input source. The exact way to do this will depend on your desktop environment. In Gnome, you can do so under Settings -> Region & Language.

### Switch input method
Depending on your desktop environment, you should now have a language/keyboard picker where you can set your input to Pali. For example, in Gnome, this menu will show up in the top right corner, and you should also be able to switch using the Super-spacebar key combination. (On many keyboards, the Super key is the one with the windows logo).

You should now be able to type "aa" and get "ā".

## Note for Emacs users
It looks like IBus doesn't really play well with Emacs, getting in the way of various keybindings, at least with this particular database. If you wish to input Pali into Emacs, I recommend using [emacs-pali-velthuis](https://github.com/matko/emacs-pali-velthuis) instead. This uses Emacs' own internal input method, and therefore plays much more nicely with the rest of emacs.
