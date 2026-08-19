# 🎓 Mahatma Gandhi Institute of Technology & Management (MGITM)

[![Website Status](https://img.shields.io/badge/Status-Live-success?style=flat-square)](https://www.mgitm.in)
[![ISO Standard](https://img.shields.io/badge/ISO-9001%3A2015_Certified-blue?style=flat-square)](about-us.html)
[![Verification Engine](https://img.shields.io/badge/Verification-24x7_Online-orange?style=flat-square)](verify.html)
[![License](https://img.shields.io/badge/License-All_Rights_Reserved-red?style=flat-square)](about-us.html)

Official web portal and digital examination verification system for **Mahatma Gandhi Institute of Technology & Management (MGITM)** (`www.mgitm.in`).

MGITM is an autonomous educational institution governed from the capital of India (Delhi NCR), dedicated to providing job-ready Technical, Vocational, IT, Management, and Teacher Training certifications across a nationwide network of 800+ learning centers.

---

## 🌟 Core Highlights & Systems

### 1. 📜 Marksheet & Academic Statement Portal (`result.html`)
- **Instant Search**: Search records using Student Registration Number (e.g., `MGI/ACCA/08/1050`, `MGI/ELEC24-267145293`) or Roll Number (e.g., `ELEC2426342335`, `EE21244567291`).
- **URL Parameter Direct Access**: Auto-loads records with `?regno=...` or `?roll=...` queries.
- **Official Academic Statement**:
  - Full candidate particulars & examination session metadata.
  - Multi-year transcript breakdown with marks obtained, maximum marks, aggregate percentage, and final division.
  - Live dynamic verification QR Code.
  - Official Controller of Examinations authorization stamp & digital signatures.
- **Single-Page A4 Print Engine**: Dedicated `@media print` styling formats the complete marksheet onto a single A4 page with all website navigation and chrome hidden.

### 2. 🛡️ Online Credential Verification Portal (`verify.html`)
- **Institutional Verification**: Enables employers, universities, and government bodies to authenticate student certificates in real-time.
- **Digital Security Features**: Unique verification reference ID, digital security shield badge, ISO 9001:2015 authentication seal, and scanned verification routing.
- **One-Click Certificate Print**: Clean, printable verification report formatted for official submission.

### 3. 📚 Searchable Course Catalog (`courses.html`)
- Comprehensive directory of **75+ accredited diploma & certificate courses** across 6 key disciplines:
  - Computer Science & IT (DCA, ADCA, Web Designing, Hardware & Networking, etc.)
  - Teacher Training (DNTT, DELED, Physical Education, Yoga Teacher Training)
  - Industrial Trades (Electrician, Electronics, Mechanical, Civil, Electrical)
  - Finance, Management & Commercial Applications
  - Health Care, Hospitality & Creative Arts
- Real-time instant search by title and domain filter dropdown.

### 4. 🤝 Branch Collaboration & Open Session System (`branch-collaboration.html`)
- Application portal for new center affiliations and institutional partnerships.
- Information on the Supreme Court approved **Open Session System (OSS)** for simultaneous skill certifications.

---

## 📁 Repository Structure

```
mgitmin/
├── index.html                      # Home Portal (Hero, Key Stats, Quick Verification Widget)
├── about-us.html                   # Institutional Profile, Vision, Mission, ISO Standards
├── director-message.html           # Message from the Desk of Director
├── courses.html                    # 75+ Course Directory with Live Filtering
├── result.html                     # Official Marksheet Portal (Single-Page A4 Print Optimized)
├── verify.html                     # Online Certificate & Credential Verification Portal
├── result-verification.html        # Academic Verification Hub
├── branch-collaboration.html       # Center Affiliation & Franchise Application
├── how-to-get-affiliations.html    # Step-by-Step Affiliation Guidelines
├── faqs.html                       # Comprehensive Student & Partner FAQ Accordion
├── inquiry.html                    # Student Admission Inquiry Form
├── contact-us.html                 # Official Desk & Corporate Office Information
├── thank-you.html                  # Form Submission Success Screen
├── css/
│   └── modern-mgitm.css            # Unified Design System, Typography & Print Stylesheets
├── db/
│   ├── courses.json                # Course Catalog Database
│   └── results.json                # Student Academic & Examination Records Database
├── images/                         # Institutional Emblems, Logos & Visual Assets
└── plan_content/                   # Source Curriculum & Institutional Documentation
```

---

## 🛠️ Technology Stack

| Layer | Technologies Used |
| :--- | :--- |
| **Structure** | Semantic HTML5, SEO OpenGraph meta tags, responsive viewport |
| **Styling** | Vanilla CSS3 (Custom Tokens, CSS Grid, Flexbox, Micro-animations, `@media print`) |
| **Data & Logic** | Modern JavaScript (ES6+), JSON Databases (`db/results.json`, `db/courses.json`) |
| **Typography** | Plus Jakarta Sans & Playfair Display (Google Fonts) |
| **Icons & Media** | Font Awesome CDN, Official MGITM Emblems |
| **Form Processing**| Serverless Form Handler API (Web3Forms) |

---

## 🖨️ Single-Page Print Optimization

Both `result.html` and `verify.html` are configured with dedicated `@media print` rules:
- Paper format: **A4 Portrait** (`margin: 8mm`).
- Hides headers, navigation strips, search bars, action buttons, and footers automatically during print.
- Preserves high-contrast borders, background tints (`-webkit-print-color-adjust: exact`), and prevents multi-page overflow.

---

## 📬 Official Desk & Contact

- **Institution**: Mahatma Gandhi Institute of Technology & Management (MGITM)
- **Corporate Office**: Delhi NCR, India
- **Official Inquiries**: `indiamgitm@gmail.com`
- **Website**: [www.mgitm.in](https://www.mgitm.in)

---

Copyright © 2026 Mahatma Gandhi Institute of Technology & Management (MGITM). All Rights Reserved.
