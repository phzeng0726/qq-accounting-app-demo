# QQ Accounting App Demo

![](https://i.imgur.com/e69Yb4S.png)

---

## 作品介紹

### 簡介

這個 記帳 APP 是我在工作之餘的空閒時間自製的作品，創作動機是 Play 商店裡的記帳軟體五花八門，不過許多軟體操作繁複而且塞滿了一堆廣告，於是就誕生了這個作品。

- 功能：帳本記錄、文字化帳戶列表、視覺化統計圖表、字體調適、日期區間篩選...等。
- 開發時長：空閒時間，從 0 到有，林林總總相加起來 **開發總時長為 3 週**。。

在執行專案之前，先於 Flutter 的專案路徑執行

`
flutter pub run build_runner build --delete-conflicting-outputs`

### 資料庫架構

![](https://i.imgur.com/oRPfTVb.png)

## 主要工具

- **前端**
  - Flutter
    - Design pattern： Domain-Driven Design
    - dependencies  
      ![](https://i.imgur.com/knv2qKY.png)
- **後端**
  - SQLite
  - Firestore (如要做帳戶備份的話可增加)
- **版本控制與資料庫規劃**
  - Git
  - Xmind
