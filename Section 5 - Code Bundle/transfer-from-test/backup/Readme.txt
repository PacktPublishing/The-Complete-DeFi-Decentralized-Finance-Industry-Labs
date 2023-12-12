
Hello Replit user,

We've performed an automatic upgrade to your repl due to a found
vulnerability with older versions of Vite - a development server
we use with React, Vue, Svelte, HTML, and other web frontend repls.
The vulnerability is severe as it allows anonymous users
to get the contents of secrets through a HTTP request.
For this reason, we decided to take action to protect our users.

The upgrade process is as follows:

0. if the vite version specified in your package.json is lower than 2.9.9,
your repl may be affected and we proceed with the upgrade
1. if the repl has a version of Node.js lower than 16, we need to upgrade it
in order to run the latest version of Vite. To do that, we
convert the repl to a nix repl (the standard for our current repls),
then install Node.js 16
2. We update the Vite dependency in your package.json to version ^3.0.4
3. We run npm install

In a small number of cases, our automatic upgrade procedure can
render a repl with an error. For that reason, we've backed up
each file we overwrite in this backup directory. If you need to
revert our fix, you have the means to do so. However, we strongly
encourage you to upgrade Vite to at least version 3.0.0 on your own,
after the restoration, as Vite version 2 may be vulnerable. The way
to check this is to run the command:

curl https://<your repl slug>.<your username>.repl.co/etc/passwd

and if you see something that starts with root:x:0:0:root:/root:/bin/bash.
If it does, then your repl is vulnerable and you should upgrade.

If you have questions and/or need help, feel free to contact support.

Thank you for reading,
- The Replit Staff

