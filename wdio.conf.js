export const config = {
    // ====================
    // Runner Configuration
    // ====================
    // runner: 'local', // Not needed in v9
    hostname: '127.0.0.1',
    port: 4723,
    path: '/', // Updated for Appium 3.x

    // ============
    // Specs
    // ============
    specs: [
        './e2e/appium/**/*.js'
    ],

    // ============
    // Capabilities
    // ============
    capabilities: process.env.PLATFORM === 'ios' ? [{
        platformName: 'iOS',
        platformVersion: '16.0',
        deviceName: 'iPhone 14',
        automationName: 'XCUITest',
        app: './build/ios/Debug-iphonesimulator/Runner.app', // Path to the iOS app
        noReset: true,
        newCommandTimeout: 300000
    }] : [{
        platformName: 'Android',
        platformVersion: '11.0',
        deviceName: 'emulator-5554',
        automationName: 'UiAutomator2',
        app: './build/app/outputs/flutter-apk/app-debug.apk', // Path to the APK
        appPackage: 'com.example.open_weather_example_flutter', // Update with your app package
        appActivity: 'com.example.open_weather_example_flutter.MainActivity', // Update with your main activity
        noReset: true,
        newCommandTimeout: 300000
    }],

    // ===================
    // Test Configurations
    // ===================
    logLevel: 'info',
    bail: 0,
    waitforTimeout: 10000,
    connectionRetryTimeout: 120000,
    connectionRetryCount: 3,

    // ===================
    // Framework
    // ===================
    framework: 'mocha',
    reporters: ['spec'],

    // ============
    // Hooks
    // ============
    beforeSession: function (config, capabilities, specs) {
        // Custom setup before session starts
        // Note: For API response mocking in mobile tests, consider using:
        // - Charles Proxy or mitmproxy for network interception
        // - Appium's network capabilities (limited)
        // - Mock server setup in test environment
    },

    afterSession: function (config, capabilities, specs) {
        // Custom cleanup after session ends
    },

    beforeTest: function (test, context) {
        // Custom setup before each test
    },

    afterTest: function (test, context, { error, result, duration, passed, retries }) {
        // Custom cleanup after each test
        if (error) {
            console.log(`Test failed: ${test.title}`);
        }
    }
};

export default config;