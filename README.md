# Node-RED

Node-RED is a low-code programming tool for wiring together hardware devices, APIs, and online services. Using a visual flow editor and a rich palette of ready-made nodes, you build logic by connecting blocks instead of writing code from scratch. This app runs Node-RED directly on the device, so you can build and run flows right at the edge.

Now powered by **Node-RED 5.0** — the most significant editor update in the project's history, featuring a modernized interface and a built-in dark theme.

For more information, see the official [__Node-RED home page__](https://nodered.org/) or the [__GitHub repository__](https://github.com/node-red/node-red).

<img src="https://user-images.githubusercontent.com/4663918/63022233-76304400-be70-11e9-8516-cab988df6b1e.png">

## Usage Instructions

You can run this app in **Development mode** or in **User Interface mode**. To switch between them, change the mode in the app's parameters.

Typically, you build and refine your flow in Development mode, then switch to UI mode so users can interact with the finished app.

## Roll out a flow to multiple devices

1. Build and test a working flow. Your flow can also use UI widgets to display a live dashboard of your device or sensor metrics.

2. Export the flow via **Menu → Export** and copy it to the clipboard.

3. On the target device or group, open the parameter settings of the Node-RED Runner app and paste the flow into the `Node-RED flow.json` parameter field. Save the parameters and restart the app.

If your flow includes a dashboard, enable **Remote Access** in the app's settings menu. Clicking the app icon will then take you straight to your dashboard.

<img src="https://storage.googleapis.com/reswarm-images/Screenshot%202023-07-18%20at%2015.31.35.png">

## Creating Standalone Device Dashboards

The Node-RED Runner app is a quick way to test workflows across different devices. For production use, however, we recommend cloning this app on GitHub and adding your flow as a file in the app's code repository. This gives you full version control and a better experience for end users, who can then run the app without any manual configuration.

## License
### Apache-2.0 License

Copyright (c) OpenJS Foundation and other contributors, https://openjsf.org/

Modified work Copyright (c) 2020 Record Evolution GmbH
Adaptation from the original author(s)' binary code to be used as a microservice.

See the full license in the [source code](https://github.com/node-red/node-red).