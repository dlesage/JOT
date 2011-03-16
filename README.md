# ABOUT
This is a fairly simple Ruby script that uses SOAP to retrieve issues from a JIRA instance and pumps them into
a customizable ERB template.

# INSTALLING
1. Ensure Ruby is installed.  Currently only tested with Ruby 1.8.7 on Mac OSX Snow Leopard.
2. Install SOAP4R.  `[localhost ]$ sudo gem install soap4r`
3. Download by clicking on the `Downloads` button above on the right and picking a archive format
4. Unzip it where you want it to go.   Make sure you unzip into a directory so you don't end up with files everywhere.
4. Optionally add the new directory you created to your PATH, `PATH=$PATH:~/scripts/JIRAReport/`
5. Make the `JIRAReport.rb` file executable, `[localhost]$ chmod +x JIRAReport.rb`

# RUNNING
Run `JIRAReport.rb` and specify arguments as required.  Not rocket science.

    JIRAReport.rb [options]
        -s, --security                   Retreive security levels. Slow, dont do it unless necessary
        -t, --template FILE              template to use
        -u, --username USERNAME          JIRA username
        -p, --password PASSWORD          JIRA password
        -f, --filter FILTER              JIRA filter
        -h, --help                       Display this screen

E.g. : `[localhost]$ JIRAReport.rb -u joe -p jf84hjf -f "Unresolved JIRAs for 4.8" -t overdue_issues_report.erb`

The error handling for the parameters is pretty terrible right now.  

You need to supply:

1.  `-u` and `-p` for your username and password to authenticate
2.  `-f` to specify the filter that you are retrieving the list of issues from
3.  `-t` to specify the template that is to be used to format the output

The only optional parameters right now are `-h` and `-s`.  

* `-h` displays the help and exits.  
* -s forces it to retrieve the security level information for each issue as well, this is much slower and
  shouldn't be used unless you need that information.

Currently you can only retrieve data based on a filter that you have "favorited" in JIRA, so you must be 
authenticated.

An example template, `example.erb`, is included. This template is an example of producing a Docbook XML
variablelist from some custom fields. Currently this template assumes that the security level information has
been requested and produces slightly weird output if you haven't specified `-s`.

# CREATING CUSTOM TEMPLATES
Different templates can be supplied using the `-t` parameter. These templates must be written in Embedded
Ruby, see <http://en.wikipedia.org/wiki/ERuby>. I hope to be adding more example files in the future.

Note that although the wikipedia page talks about Embedded Ruby in the specific context of generating HTML
output this is not a limitation. The template doesn't care about anything outside of the `<%` `%>` tags. It
could be used to produce HTML, XML, CSV or any other text based format you want.


