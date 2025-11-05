===============================================================================
                    LAWFIRM PRO - HTML TEMPLATE
                    Complete Law Firm Website Template
===============================================================================

PROJECT INFORMATION
===============================================================================
Template Name:        LawFirm Pro
Version:              1.0.0
Release Date:         January 2024
Author:               LawFirm Pro Team
License:              Commercial/Personal Use
Support:              support@lawfirmpro.com

===============================================================================
DESCRIPTION
===============================================================================

LawFirm Pro is a complete, professional, and fully responsive HTML template
designed specifically for law firms, attorneys, and legal service providers.
Built with modern web technologies, this template offers a clean and
professional design that helps establish credibility and trust with potential
clients.

The template includes all essential pages and features needed for a modern
law firm website, including practice areas, attorney profiles, case studies,
blog functionality, contact forms, and more.

===============================================================================
FEATURES
===============================================================================

✓ Fully Responsive Design
  - Works perfectly on desktop, tablet, and mobile devices
  - Optimized for all screen sizes

✓ Modern & Professional Design
  - Clean, elegant layout
  - Professional color scheme
  - Professional typography

✓ Multiple Pages Included
  - Homepage with hero section
  - About Us page
  - Practice Areas (6 practice areas)
  - Attorneys/Team page
  - Case Studies
  - Blog listing and detail pages
  - FAQ page
  - Contact page
  - Login/Register pages
  - Privacy Policy & Terms pages
  - 404 Error page

✓ Components & Elements
  - Preloader animation
  - Header with navigation
  - Footer with multiple sections
  - Sidebar widgets
  - Modal dialogs
  - Contact forms
  - Testimonial sections
  - Practice area cards
  - Attorney profile cards
  - FAQ accordion
  - Blog post cards
  - Call-to-action sections

✓ JavaScript Functionality
  - Smooth scrolling
  - Mobile menu toggle
  - Form validation
  - Counter animations
  - Testimonial slider
  - FAQ accordion
  - Dark mode toggle (with localStorage)
  - Image lazy loading
  - AJAX form submission
  - AOS (Animate On Scroll) integration

✓ CSS Features
  - Custom CSS variables for easy theming
  - Dark mode support
  - Smooth animations and transitions
  - Responsive breakpoints
  - Modern animations library

✓ SEO Optimized
  - Semantic HTML5 structure
  - Meta tags included
  - Proper heading hierarchy

✓ Cross-Browser Compatible
  - Works on all modern browsers
  - Chrome, Firefox, Safari, Edge

===============================================================================
TECHNOLOGY STACK
===============================================================================

- HTML5
- CSS3 (with CSS Variables)
- JavaScript (Vanilla JS)
- jQuery 3.6.0
- Bootstrap 5.3.0
- Font Awesome 6.4.0
- AOS (Animate On Scroll) 2.3.1
- Google Fonts (Playfair Display & Roboto)

===============================================================================
FILE STRUCTURE
===============================================================================

lawfirm-template/
│
├── assets/
│   ├── css/
│   │   ├── style.css           (Main stylesheet)
│   │   ├── responsive.css      (Responsive styles)
│   │   ├── dark.css            (Dark mode styles)
│   │   └── animations.css      (Animation styles)
│   │
│   ├── js/
│   │   ├── main.js             (Main JavaScript file)
│   │   ├── ajax.js             (AJAX utilities)
│   │   ├── plugins.js          (Plugin initialization)
│   │   ├── jquery.min.js       (jQuery library - placeholder)
│   │   ├── bootstrap.bundle.js (Bootstrap JS - placeholder)
│   │   └── aos.js              (AOS library - placeholder)
│   │
│   └── images/                 (Your images folder)
│
├── pages/
│   ├── index.html              (Homepage)
│   ├── about.html              (About Us)
│   ├── practice-areas.html     (Practice Areas)
│   ├── attorneys.html          (Attorneys)
│   ├── case-studies.html       (Case Studies)
│   ├── blog.html               (Blog Listing)
│   ├── blog-details.html       (Blog Detail)
│   ├── faq.html                (FAQ)
│   ├── contact.html            (Contact)
│   ├── login.html              (Login)
│   ├── register.html           (Register)
│   ├── 404.html                (404 Error)
│   ├── privacy-policy.html     (Privacy Policy)
│   └── terms.html              (Terms of Service)
│
├── partials/
│   ├── header.html             (Header component)
│   ├── footer.html             (Footer component)
│   ├── preloader.html          (Preloader component)
│   ├── sidebar.html            (Sidebar component)
│   └── modals.html             (Modal components)
│
├── docs/
│   ├── documentation.html      (Documentation)
│   ├── changelog.txt           (Version history)
│   └── credits.txt             (Credits & attributions)
│
└── README.txt                  (This file)

===============================================================================
INSTALLATION & SETUP
===============================================================================

1. EXTRACT FILES
   - Extract all files from the ZIP archive
   - Ensure all folders and files are extracted properly

2. FILE STRUCTURE
   - Keep the folder structure intact
   - All paths are relative, so structure is important

3. OPEN IN BROWSER
   - Simply open pages/index.html in your web browser
   - For best results, use a local server (see below)

4. USING A LOCAL SERVER (Recommended)
   
   Option A - Using Python:
   - Navigate to the template folder in terminal
   - Run: python -m http.server 8000
   - Open: http://localhost:8000/pages/index.html
   
   Option B - Using Node.js (http-server):
   - Install: npm install -g http-server
   - Navigate to template folder
   - Run: http-server
   - Open the provided URL in browser
   
   Option C - Using PHP:
   - Navigate to template folder
   - Run: php -S localhost:8000
   - Open: http://localhost:8000/pages/index.html

   NOTE: A local server is recommended because jQuery's .load() method
   requires a server environment to work properly for loading partials.

===============================================================================
USAGE
===============================================================================

NAVIGATION
----------
The template uses jQuery to dynamically load header, footer, and other partials.
This is handled automatically when you open any page.

CUSTOMIZATION
-------------
1. Colors: Edit CSS variables in assets/css/style.css
   - Look for :root { ... } section
   - Modify --primary-color, --secondary-color, etc.

2. Content: Edit HTML files in pages/ directory
   - Replace placeholder text with your content
   - Update images with your own photos

3. Images: 
   - Replace Pexels image URLs with your own images
   - Store images in assets/images/ folder
   - Update image paths in HTML files

4. Contact Information:
   - Update contact details in partials/footer.html
   - Update contact details in pages/contact.html

5. Navigation Links:
   - Update menu links in partials/header.html

FORM FUNCTIONALITY
------------------
The contact forms use AJAX for submission (simulated).
To make them functional:
1. Set up a backend endpoint for form processing
2. Update the form submission handler in assets/js/ajax.js
3. Configure your server to handle POST requests

===============================================================================
CUSTOMIZATION GUIDE
===============================================================================

CHANGING COLORS
---------------
Edit assets/css/style.css:
:root {
    --primary-color: #1a4d8c;      /* Main brand color */
    --secondary-color: #d4af37;    /* Accent color */
    --dark-color: #1a1a1a;         /* Dark text */
    --light-color: #f8f9fa;        /* Light background */
}

CHANGING FONTS
--------------
Edit the Google Fonts link in each HTML file's <head>:
<link href="https://fonts.googleapis.com/css2?family=Your+Font&display=swap" rel="stylesheet">

Then update the font-family in CSS variables in style.css.

ADDING NEW PAGES
----------------
1. Create new HTML file in pages/ directory
2. Copy structure from existing page (e.g., about.html)
3. Update content
4. Add navigation link in partials/header.html

MODIFYING HEADER/FOOTER
-----------------------
Edit partials/header.html or partials/footer.html
Changes will automatically reflect on all pages.

===============================================================================
BROWSER SUPPORT
===============================================================================

✓ Chrome (latest)
✓ Firefox (latest)
✓ Safari (latest)
✓ Edge (latest)
✓ Opera (latest)
✓ Mobile browsers (iOS Safari, Chrome Mobile)

===============================================================================
KNOWN ISSUES & LIMITATIONS
===============================================================================

1. jQuery .load() for partials requires a server environment
   - Solution: Use a local server (see Installation)

2. Form submissions are simulated (AJAX)
   - Solution: Connect to your backend API

3. Images use Pexels URLs
   - Solution: Replace with your own images

===============================================================================
CREDITS & ATTRIBUTIONS
===============================================================================

- Bootstrap: https://getbootstrap.com
- jQuery: https://jquery.com
- Font Awesome: https://fontawesome.com
- AOS: https://michalsnik.github.io/aos
- Google Fonts: https://fonts.google.com
- Pexels: https://pexels.com (for placeholder images)

See docs/credits.txt for complete credits.

===============================================================================
SUPPORT
===============================================================================

For support, questions, or customization requests:
Email: support@lawfirmpro.com
Website: www.lawfirmpro.com

===============================================================================
LICENSE
===============================================================================

This template is licensed for both commercial and personal use.
You may modify and use this template for your projects.

For licensing questions, please contact: legal@lawfirmpro.com

===============================================================================
CHANGELOG
===============================================================================

Version 1.0.0 (January 2024)
- Initial release
- All pages and components included
- Full responsive design
- Dark mode support
- Complete documentation

See docs/changelog.txt for detailed version history.

===============================================================================
UPDATES & UPGRADES
===============================================================================

To check for updates or new versions:
- Visit our website
- Subscribe to our newsletter
- Follow our changelog

===============================================================================

Thank you for choosing LawFirm Pro!

===============================================================================
