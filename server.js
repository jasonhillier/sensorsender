var _Orator = require(__dirname+'/node_modules/headlight-node-sdk/server/Headlight-NodeSDK.js').new(
	{
		Product:'Headlight-SDK-App-SensorSender',
		// The folder to serve static web files from for this app.  By default, use the Stage folder.
		StaticContentFolder: __dirname+'/stage/'
	}).orator(function customRouteHandler(pOrator)
	{
		var _RPIOWebServices = new (require('rpio-webservices'))(pOrator);
	});

_Orator.startWebServer();
