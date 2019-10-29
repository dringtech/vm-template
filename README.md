# vm-template

This repo holds code to build virtual machine templates

## Pre-requsites

To use the contents of this repo, you'll need

* Virtualbox
* Packer
* Vagrant

On Mac, with a working [homebrew](http://brew.sh) installation, they can be
installed by running

    brew cask install virtualbox
    brew cask install vagrant
    brew install packer

## Building the images

The images can be built using the command

```./bake build {os_base_template} {os_variant}
```

All boxes at present are fedora-based.

## Using the resulting templates

### Vagrant

The vagrant box can be loaded directly to vagrant using the command

```./bake load {os} {version}
```

This is defined by the box file created, which is of the form:

```packer_{os}_{version}_vbox_virtualbox.box
```
