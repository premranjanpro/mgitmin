# 🎓 Mahatma Gandhi Institute of Technology & Management (MGITM)

Welcome to the official static website repository for **Mahatma Gandhi Institute of Technology & Management (MGITM)** (`www.mgitm.in`).

MGITM is an **ISO 9001:2015 Certified Institute** governed from the capital of India, dedicated to providing career-oriented Technical, Vocational, IT, Management, and Teacher Training courses across an expansive pan-India network.

---

## 🚀 Key Project Highlights

- **Aesthetics & UI/UX**: Premium modern glassmorphism design system using HSL-tailored colors, Google Fonts (`Outfit` & `Plus Jakarta Sans`), subtle micro-animations, and responsive cards.
- **Privacy & Security**: Zero public exposure of internal personal contacts; official communication desk strictly routes through `indiamgitm@gmail.com`.
- **Form Processing**: Web3Forms backend integration for Contact, Course Inquiry, and Branch Collaboration forms with seamless redirection to `thank-you.html`.
- **Content Integration**: 100% data extraction and presentation from `plan_content/` documents:
  - `MGITM COURSE LIST.xlsx`: 76 accredited diploma and certificate programs.
  - `ABOUT US MGITM (1).docx`: ISO credentials, 800+ learning centers mission, Vision, and Values.
  - `FAQ FOR MGITM (1).docx`: Q&A covering Open Session System (OSS), Supreme Court degree guidelines, and self-employment.
  - `FOUNDER MESSAGE FOR MGITM (1).docx`: Message from the Desk of Chairman / Director.
  - `APPLICATION FOR COLLABORATION (1).docx`: Franchise & branch partnership application structure.
- **Verification Engine**: Interactive student result lookup system (`db/results.json`) with print-ready marksheet statements.

---

## 📁 Repository & Asset Structure

```
mgitmin/
├── index.html                      # Homepage (Hero Banner, Quick Stats, Result Lookup Widget)
├── about-us.html                   # About MGITM (Vision, Mission, Values, ISO Credentials)
├── director-message.html           # Director & Chairman Message
├── courses.html                    # Interactive 76-Course Directory & Search Filter
├── result-verification.html        # Online Student Result Verification Portal & Marksheet Print
├── branch-collaboration.html       # Franchise & Center Partnership Application Form
├── faqs.html                       # Comprehensive FAQ Accordion Portal
├── inquiry.html                    # General Course Admission Inquiry Form
├── contact-us.html                 # Contact Us, Corporate Office, & Map
├── thank-you.html                  # Form Submission Success Screen
├── css/
│   ├── modern-mgitm.css            # Primary Modern Design System & Utilities
│   ├── custom.css                  # Core CSS Layout Rules
│   └── reset.css                   # HTML5 Browser Reset
├── js/
│   ├── jquery.min.js               # jQuery Framework
│   └── custom.js                   # Navigation & UI Interaction Scripts
├── db/
│   ├── courses.json                # JSON Dataset of 76 Accredited Courses
│   └── results.json                # JSON Dataset for Student Result Verification
├── plan_content/                   # Original Document Specifications (.docx & .xlsx)
├── sitemap.xml                     # Search Engine Sitemap Indexing File
└── robots.txt                      # Web Crawler Rules
```

---

## 🛠️ Technology Stack

| Technology | Usage |
| :--- | :--- |
| **HTML5** | Semantic, SEO-optimized page markup |
| **CSS3** | Custom CSS variables, Flexbox/Grid, Glassmorphism card effects |
| **JavaScript (ES6)** | Dynamic course filtering, result lookup engine, UI toggles |
| **Bootstrap 3.3** | Grid layout foundation & modal responsive drawers |
| **Font Awesome & Iconmoon** | Crisp vector iconography |
| **Web3Forms API** | Serverless form submission handling |

---

## 📋 5-Day Implementation Roadmap

1. **Day 1**: Design System & Utilities (`css/modern-mgitm.css`), Color Tokens, Typography, and Horizontal Navbar.
2. **Day 2**: Homepage (`index.html`) & Director Message (`director-message.html`) with leadership quote card.
3. **Day 3**: Searchable Course Catalog (`courses.html`) & Printable Result Verification (`result-verification.html`).
4. **Day 4**: About Us (`about-us.html`) & Interactive FAQ Accordion (`faqs.html`).
5. **Day 5**: Web3Forms integration (`inquiry.html`, `contact-us.html`, `branch-collaboration.html`, `thank-you.html`) and final quality audit.

---

## 🔒 License & Usage
Copyright © 2026 Mahatma Gandhi Institute of Technology & Management (MGITM). All Rights Reserved.
