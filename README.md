# chatbar

flutter plugin to add customizable whatsapp,hangout,messenger based or even custom chat appbar in your flutter application

## Samples

![Gradient support](https://github.com/shivanshtalwar0/chatbar/raw/master/example/sample/sample1.png)

![plain custom color](https://github.com/shivanshtalwar0/chatbar/raw/master/example/sample/sample2.png)

## 💻 Installation
In the `dependencies:` section of your `pubspec.yaml`, add the following line:
`chatbar: <latest version>`

Import in your project:
`import 'package:chatbar/chatbar.dart';`


## API & Parameters

| Property          | Type          | Summary                                                                                               |
|-------------------|---------------|-------------------------------------------------------------------------------------------------------|
| profilePic        | Image         | profile picture for chat user                                                                         |
| username          | String        | name of chat user                                                                                     |
| status            | Widget        | current state of chat with the user                                                                   |
| gradient          | Gradient      | used to apply gradient on the surface of chatbar                                                      |
| color             | Color         | used to apply solid background color on the Chatbar                                                   |
| onprofileimagetap | Function      | can be used to listen for events when profile picture is tapped,incase you want to show image preview |
| actions           | List<Widgets> | similar to actions property of native appbar widget                                                   |
| usernamestyle     | TextStyle     | used to apply custom styling on the chat username                                                     |
| statusstyle       | TextStyle     | used to apply custom styling on the chat status                                                       |
| lastseen          | String        | last seen of a chat user                                                                              |
| backbuttoncolor   | Color         | custom color of back button                                                                           |
| backutton         | IconButton    | in case you want custom back button                                                                   |
| height            | Double        | to increase the height of chatbar widget                                                              |
| actionspacer      | Int           | to increase the gap between actions and chat user container(not recommended)  


## 👨 Developed By
`Shivansh Talwar`

## 👍 How to Contribute

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## 📃 License
    Copyright (c) 2019 Shivansh  Talwar

    Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
