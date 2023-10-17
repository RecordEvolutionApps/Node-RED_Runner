# Node-RED
Node-RED is a programming tool that enables the integration of hardware devices, APIs, and online services in an innovative way.
With a low code editor, users can effortlessly connect flows using an extensive selection of nodes available in the palette.
This App runs Node-RED on the device and facilitates the creation of flow controls directly on the device.

For more information check the official [__home page of Node-RED__](https://nodered.org/) or the associated [__GitHub repository__](https://github.com/node-red/node-red).

<img src="https://camo.githubusercontent.com/c7b6e0b937295c4d2c852130814050eb0caffac5b700ead6de21df6dbf83aa82/687474703a2f2f6e6f64657265642e6f72672f696d616765732f6e6f64652d7265642d73637265656e73686f742e706e67">


## Usage Instructions

You can operate this app in Development mode or in User Interface Mode. To toggle between the modes, you can switch the mode in the parameters of the app.
Usually you would work on your flow in Develpment mode until done and then switch to UI Mode for users to use the app.

## Rollout a flow to multiple devices

1. First you create a working flow. Your flow can also use UI widgets to display a live dashboard of your device/sensor metrics.

2. Export the Flow unter Menü -> Export and copy the flow to the clipboard.

3. Go to the Parameter settings of Node-RED installed on a group or another device and paste the flow into the parameter field `Node-RED flow.json`. Save the parameters and restart the Node-RED Runner app.

If your flow contains a dashboard, then you can enable the Remote Access in the settings menu of the app. When you click on the app icon you then immediately see your dashboard

<img src="https://storage.googleapis.com/reswarm-images/Screenshot%202023-07-18%20at%2015.31.35.png">


# Creating Standalone Device Dashboards

The Node-RED Runner app is an easy way to test out your workflows on different devices, but to use your flow in a production environment we recommend you clone this app on GitHub and add your flow as a file into the app code repository. This way you gain full versioning support and improve usability for users since they don't have to configure anything to use the app.

# LICENSE
### Apache-2.0 License

Copyright (c) OpenJS Foundation and other contributors, https://openjsf.org/

Modified work Copyright (c) 2020 Record Evolution GmbH
   1. Adaptation from original author(s) binary code to be used as a microservice

See full license in the [source code](https://github.com/node-red/node-red)

## Hardware
You will need to register a Raspberry Pi or any other device with the supported architecture in our device studio.
If you haven't registered a device yet, follow the [documentation](https://docs.record-evolution.de/#/en/Reswarm/connect-devices)


# LICENSE
### Apache-2.0 License

Copyright (c) OpenJS Foundation and other contributors, https://openjsf.org/

Modified work Copyright (c) 2020 Record Evolution GmbH
   1. Adaptation from original author(s) binary code to be used as a microservice

See full license in the [source code](https://github.com/node-red/node-red)