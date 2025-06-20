# 💼 Flutter Interview Assignment

## ✅ Task Completed

As part of the interview, the following was implemented:

- Created a **Flutter Host App** (`bank_app`) and a **Flutter Module** (`transaction_module`)
- Integrated the module into the host using a **library dependency approach**
- Implemented **bidirectional data transfer**:
  - Host passes `accountId` and `balance` to the module
  - Module returns `transactionId` to the host
- Used `Navigator.push()` and `Navigator.pop()` for data communication
- Ensured proper **lifecycle management** within Flutter’s widget tree
- Provided a **working APK** and a **demo video**

---

## 📽️ Demo Video

<video src="bank_app/assets/demo_video.mp4" controls></video>

🎥 [Watch Demo Video on Google Drive]([https://drive.google.com/file/d/your-id/view?usp=sharing](https://drive.google.com/file/d/1MUE-tEyWRZJyGyRAmdoPFXSLlAFZKsbY/view?usp=sharing))

---

## 📦 APK

- File: [`app-release.apk`](app-release.apk)
- Tested on Android Emulator (Pixel 6, API 34) and physical devices

---

## 📂 Repository Structure

Interview_task/
├── bank_app/
│ └── assets/
│ └── demo_video.mp4
├── transaction_module/
├── app-release.apk
