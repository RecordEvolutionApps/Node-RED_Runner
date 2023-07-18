# Node-RED Runner
The Node-RED Runner is a version of the Node-RED app that is set up to execute a perviously given flow for development and test purposes.

## Usage Instructions

1. First you create a working flow with the regular [Node-RED App](https://studio.record-evolution.com/de/apps/Node-RED).
Note that your flow can also use UI widgets to display a live dashboard of your device/sensor metrics.

2. In the Node-RED App export the Flow unter Menü -> Export and copy the flow to the clipboard.

3. Go to the Parameter settings of the Node-RED Runner app on your device and paste the flow into the Parameter field `Node-RED flow.json`. Save the parameters and restart the Node-RED Runner app.

If your flow contains a dashboard, then you can enable the Remote Access in the settings menu of the app. When you click on the app icon you then immediately see your dashboard

<img src="https://storage.googleapis.com/reswarm-images/Screenshot%202023-07-18%20at%2015.31.35.png">

If you want to deploy your flow on a group of devices at the same time, you can also paste your flow into the parameter settings of the Node-RED Runner app installed on your device group.

# Creating Standalone Device Dashboards

The Node-RED Runner app is an easy way to test out your workflows on different devices, but to use your flow in a production environment we recommend you clone this app on GitHub and add your flow as a file into the app code repository. This way you gain full versioning support and improve usability for users since they don't have to configure anything to use the app.

# LICENSE
### Apache-2.0 License

Copyright (c) OpenJS Foundation and other contributors, https://openjsf.org/

Modified work Copyright (c) 2020 Record Evolution GmbH
   1. Adaptation from original author(s) binary code to be used as a microservice

See full license in the [source code](https://github.com/node-red/node-red)