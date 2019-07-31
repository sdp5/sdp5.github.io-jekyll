---
layout: post
title: "Langpacks Auto-installation"
date: 2019-07-31 15:42:21 +0530
comments: true
categories: fedora
---

Fedora Linux Operating System has strong language support. Underneath, there are a lot of components that facilitate `display`, `input` and `storage` of foreign language data. Either user can install Fedora in their native language and continue using it, or can easily switch their workstation from one language to another. For the latter case, steps are:

* Open “GNOME Control Center”
* Select “Region & Language” tab.
* Select language from modal box and logoff-login the session.

{% img center https://github.com/sundeep-co-in/sundeep-co-in.github.io/blob/source/source/images/autoinstall-langpacks/switch-lang.png?raw=true 450 280 %}

<!-- more -->

Here, user has selected Japanese language. As soon as the user logs into the new session, Japanese `locale data` would be triggered and applications would appear in Japanese. A lot of locale data lie in language packs. These data may include fonts, IMEs, translations etc.

To make installation of language packs convenient, language meta-packages have been created. Once `language meta package` is installed all required language packs for installed applications are pulled and installed too. For Japanese, installation command would be:

```
[user@localhost home]$ sudo dnf install langpacks-ja
```

Earlier, this installation was manual (*and an overhead*). After long discussion, `GNOME-Software` was identified to be an ideal setup to have langpacks auto-installation functionality.

Now, with the [implementation](https://gitlab.gnome.org/GNOME/gnome-software/merge_requests/257), user need not worry about installation of langpack; as in the background it gets installed automatically as soon as GNOME-Software starts looking for updates, may be for the first time, in both the scenarios:

* It’s a new installation in any foriegn language and user continues to use that language.
* The user switches into new session of a foriegn language from English or any other language.

Because this is a `background task`, no notifications are popped up, however, here is how a debug message is logged. Just in case, user uninstalls the language meta package, this feature may not reinstall it.

{% img center https://github.com/sundeep-co-in/sundeep-co-in.github.io/blob/source/source/images/autoinstall-langpacks/langpacks-ja.png?raw=true 450 280 %}

I really hope this feature to be available in `Fedora 31`. And make the lives of Fedora native language users easier. :)
