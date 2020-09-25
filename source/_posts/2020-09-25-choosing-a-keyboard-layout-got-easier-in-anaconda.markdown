---
layout: post
title: "Choosing a major keyboard layout got easier in anaconda"
date: 2020-09-25 13:06:02 +0530
comments: true
categories: fedora
---

[Anaconda](https://fedoraproject.org/wiki/Anaconda) is the default installer choice of linux distros like [fedora](https://getfedora.org/), [Red Hat Enterprise Linux](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux) and others. It allows the user to set languages, keyboards, time & date, storage, networking, software packages and accounts. During installation, the target computer’s hardware is identified, configured and appropriate file systems are created.

{% img center https://github.com/sundeep-co-in/sundeep-anand.github.io/blob/source/source/images/anaconda-keyboards/anaconda.png?raw=true 450 280 %}

<!-- more -->

Users can enable input methods for their language (and script) using the Keyboard tab. They can choose from a menu of options. Locating desired layout in this long list could seem tedious.

{% img center https://github.com/sundeep-co-in/sundeep-anand.github.io/blob/source/source/images/anaconda-keyboards/anaconda-keyboard-layouts.png?raw=true 450 280 %}

An attempt was made to determine major keyboard layouts and place them first in the keyboard layouts selection list. Hence lesser scroll for the users.

{% img center https://github.com/sundeep-co-in/sundeep-anand.github.io/blob/source/source/images/anaconda-keyboards/anaconda-keyboard-layouts-separator.png?raw=true 450 280 %}

[anaconda-34.5-1](https://github.com/rhinstaller/anaconda/commit/429b4c1eec2b8d00654c7141bfb3fd580729f76e) gracefully includes this proposal, making a significant improvement when selecting keyboards.

happy hacking!
