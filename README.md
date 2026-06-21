# G HUB Fix / G HUB Düzeltici

A one-click fix for Logitech G HUB when it gets stuck on the spinning logo at startup.

Logitech G HUB başlangıçta dönen logoda takılı kaldığında tek tıkla düzelten araç.

---

## 🇬🇧 English

### What it does
Automates the official [Logitech G HUB Service restart guide](https://support.logi.com/hc/articles/35644288645655):
1. Force-closes all G HUB processes (`lghub.exe`, `lghub_agent.exe`)
2. Restarts the `LGHUBUpdaterService` Windows service
3. Waits for the service to stabilize
4. Relaunches G HUB automatically

### How to use
1. Download `GHUB_Duzelt.bat`
2. **Right-click → Run as administrator**
3. Done — G HUB will restart automatically

> **Tip:** To avoid right-clicking every time, create a shortcut to the `.bat` file, open shortcut properties → Advanced → check **"Run as administrator"**. After that, double-click is enough.

### Requirements
- Windows 10 / 11
- Logitech G HUB installed in the default path (`C:\Program Files\LGHUB\`)
- Administrator privileges

---

## 🇹🇷 Türkçe

### Ne yapar?
Logitech'in resmi [G HUB Servis yeniden başlatma rehberini](https://support.logi.com/hc/tr/articles/35644288645655) otomatik olarak uygular:
1. Tüm G HUB işlemlerini zorla kapatır (`lghub.exe`, `lghub_agent.exe`)
2. `LGHUBUpdaterService` Windows servisini yeniden başlatır
3. Servisin oturmasını bekler
4. G HUB'ı otomatik olarak açar

### Nasıl kullanılır?
1. `GHUB_Duzelt.bat` dosyasını indirin
2. **Sağ tık → Yönetici olarak çalıştır**
3. Bitti — G HUB otomatik olarak yeniden açılır

> **İpucu:** Her seferinde sağ tık yapmak istemiyorsanız dosyanın kısayolunu oluşturun, kısayol özelliklerinden Gelişmiş → **"Yönetici olarak çalıştır"** kutusunu işaretleyin. Artık çift tık yeterli.

### Gereksinimler
- Windows 10 / 11
- G HUB varsayılan konumda kurulu olmalı (`C:\Program Files\LGHUB\`)
- Yönetici yetkisi

---

## License
MIT — free to use, modify and share.

---

## ⚠️ Disclaimer
This is an **unofficial, community-made tool**. It is not affiliated with, endorsed by, or supported by Logitech. Logitech and G HUB are trademarks of Logitech. This tool simply automates the steps from Logitech's own official support guide.

Bu **resmi olmayan, topluluk tarafından yapılmış bir araçtır**. Logitech ile herhangi bir bağlantısı yoktur, Logitech tarafından onaylanmamış veya desteklenmemektedir. Logitech ve G HUB, Logitech'in ticari markalarıdır. Bu araç yalnızca Logitech'in kendi resmi destek rehberindeki adımları otomatikleştirir.

## License
MIT — free to use, modify and share.
