# 🛡️ MTProto Deep Checker

A powerful, pure Node.js tool to verify **Telegram MTProto Proxies** by performing real protocol handshakes. Unlike simple TCP checkers, this tool attempts to fetch the actual server configuration from Telegram via the proxy, ensuring 100% connectivity and eliminating the "Connecting..." issue.

![UI Screenshot](images/screenshot.png)

## 🌟 Features

* **Deep Inspection:** Uses `GetConfig` request to verify if the proxy can actually transfer Telegram data.
* **Pure JavaScript:** Built with **GramJS**. No need for C++ compilers, `node-gyp`, or Visual Studio Build Tools.
* **Smart Filtering:** Automatically detects and removes invalid secrets, spam links, and bad ports.
* **Modern UI:** Beautiful Dark Mode interface with real-time logs and progress bars.
* **Cross-Platform:** Works on Windows, Linux, and macOS.
* **No Auth Needed:** Uses public test keys, so you don't need to log in with your phone number.
* **Bilingual:** Supports both English and Persian (Farsi) interfaces.

## 🚀 Installation

### Prerequisites
You need **Node.js** installed on your machine. [Download it here](https://nodejs.org/).

### Steps
1.  Clone this repository:
    ```bash
    git clone [https://github.com/rahgozar94725/MTProto-Checker.git](https://github.com/rahgozar94725/MTProto-Checker.git)
    cd MTProto-Checker
    ```

2.  Install dependencies:
    ```bash
    npm install
    ```

3.  Run the application:
    ```bash
    node app.js
    ```

4.  The browser will open automatically at `http://localhost:3000`.

## 📖 How to Use

1.  **Get Proxies:** Copy your list of mixed/dirty MTProto proxies.
    > **Tip:** You can find a huge list of free proxies in [this repository](https://github.com/SoliSpirit/mtproto).
2.  **Paste Links:** Paste them into the **"Input List"** box (formats like `tg://` or `https://t.me/proxy` are supported).
3.  **Start Check:** Click the **"Start Deep Check"** button.
4.  **Wait:** The tool will filter invalid formats first, then test connections in batches.
5.  **Copy Results:** Valid proxies will appear in the right panel. Click **"Copy"** to save them to your clipboard.

## ⚙️ How it Works

Many proxies respond to TCP pings but fail to encrypt/decrypt Telegram packets (Fake Proxies).
This tool does the following:
1.  **Parses & Sanitizes:** Cleans up broken links (e.g., `.&port` typos).
2.  **Validates Secret:** Rejects secrets that are too long (spam padding) or invalid.
3.  **Connects:** Establishes a secure MTProto connection.
4.  **Invokes API:** Sends a `help.getConfig` request to Telegram Data Centers.
5.  **Result:** If the server replies with config data, the proxy is marked as **Working**.

## 🛠 Dependencies

* [express](https://www.npmjs.com/package/express) - Web server
* [telegram](https://www.npmjs.com/package/telegram) (GramJS) - MTProto implementation
* [open](https://www.npmjs.com/package/open) - Opens browser automatically

## ☕ Support

If you found this tool useful, you can support the development:

<a href="https://nowpayments.io/donation?api_key=d824db3b-fcf7-4ebb-8e3d-297c23cfeee2" target="_blank" rel="noreferrer noopener">
    <img src="https://nowpayments.io/images/embeds/donation-button-black.svg" alt="Crypto donation button by NOWPayments">
</a>

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).

---
[Read in Persian (فارسی)](README_FA.md)