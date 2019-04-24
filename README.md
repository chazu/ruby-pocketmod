# Pocketmod

A gem for generating pocketmod-style PDFs in ruby using prawn.

Heavily WIP.

## TODO
- Add registration marks to each panel
- Work out a class-based API for creating panels
- Add a couple pixels of margin to each panel

## DONE
- Make string arg to panel constructor optional
- Set the generated pdf to landscape mode
- Create a Pocketmod class to represent the complete document
- Pocketmod class should be able to '#generate' to create the file
- Create a Panel class which represents a segment of the pocketmod
- Pocketmad has several panels
- Add text to a panel
- Add panels to the pocketmod
- Pocketmod should calculate position of each panel
- Pocketmod should draw each panel to the pdf
- Pocketmod should calculate rotation of each panel
- Expose drawing context for panel as part of gem API
