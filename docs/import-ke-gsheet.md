# Cara Import CSV ke Google Sheet

## watchlist.csv → Sheet "watchlist"
1. Buka Google Sheet lo
2. Di tab bawah, rename "Sheet1" jadi **watchlist**
3. File → Import → Upload → pilih `watchlist.csv`
4. Pilih: **Insert new sheet** → Import data

## faq_saham.csv → Sheet "faq"
1. Klik tanda **+** di tab bawah → buat sheet baru
2. Rename jadi **faq**
3. File → Import → Upload → pilih `faq_saham.csv`
4. Pilih: **Insert new sheet** → Import data

## Struktur akhir Google Sheet
```
📊 Spreadsheet lo
├── 📄 watchlist    ← data portofolio & watchlist saham
└── 📄 faq          ← knowledge base FAQ (untuk NotebookLM juga)
```

## Share ke Service Account
Setelah import, jangan lupa share spreadsheet ke:
→ email service account (format: nama@project-id.iam.gserviceaccount.com)
→ Role: Editor
