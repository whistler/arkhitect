Arkhitekt
=========
Arkhitekt is a software modelling tool that generates diagrams from text based 
notation. Currently ER diagrams and Class diagrams are supported, more diagram
are planned for the future.

=== Why text instead of GUI?

It is often easier to just type out what you need to draw instead of using drag
and drop to draw in GUI, it is easier to modify as well as there is not need to
worry about the layout.

=== Design Goals
- Quick to learn
- Looks presentable in raw form
- Easy to modify
- Ability to extend to other forms of diagrams

Install
-------
    gem install arkhitekt

Useage
------
Create a file with the content as follows. Users and posts are entities, writes
is a relationship and name, email, password, title, content are attributes

    users
    -----
    name
    email
    password
    
    writes
    ------    
    users 1
    posts n
    
    posts
    -----
    title
    content

Now just run Arkitekt on the file. 

    arkhitekt diagram.txt 

Customization
-------------
Create a config block in either the model file itself or in a file named 
.arkhitekt in the same directory. Example:

    config
    ------
    entity {fontname: helvetica, fontsize: 12, color: grey, style: filled}
    relation {fontname: helvetica, fontsize: 12, color: grey, style: filled}
    edge {fontname: helvetica, fontsize: 12, color: grey, style: filled}
    attribute {fontname: helvetica, fontsize: 12, color: grey, style: filled}
    primary_attribute {fontname: helvetica, fontsize: 12, color: grey, style: filled}
    filetype png
    filter neato

Credits
-------
This project was forked from ergen. Also taking some inspiration from yUML from 
Scruffy.
