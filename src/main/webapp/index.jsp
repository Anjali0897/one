<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop | Modern Online Store</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&family=Poppins:wght@600;700;800&display=swap"
          rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        /* =====================================================
           VARIABLES
        ===================================================== */

        :root {
            --primary: #111827;
            --primary-soft: #1f2937;

            --accent: #4f46e5;
            --accent-dark: #4338ca;
            --accent-light: #eef2ff;

            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --background: #f8fafc;
            --surface: #ffffff;
            --surface-soft: #f1f5f9;

            --text: #111827;
            --text-light: #64748b;

            --border: #e2e8f0;

            --radius: 18px;

            --shadow:
                0 10px 35px rgba(15, 23, 42, 0.08);

            --container: 1200px;
        }


        /* =====================================================
           DARK MODE
        ===================================================== */

        body.dark {
            --background: #0f172a;
            --surface: #1e293b;
            --surface-soft: #334155;

            --text: #f8fafc;
            --text-light: #94a3b8;

            --border: #334155;

            --primary: #f8fafc;
            --primary-soft: #e2e8f0;

            --accent-light: #312e81;
        }


        /* =====================================================
           RESET
        ===================================================== */

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--background);
            color: var(--text);
            line-height: 1.5;
            transition: background .3s, color .3s;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input,
        select {
            font-family: inherit;
        }

        button {
            cursor: pointer;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        img {
            display: block;
            max-width: 100%;
        }

        .container {
            width: min(100% - 32px, var(--container));
            margin: auto;
        }


        /* =====================================================
           TOP BAR
        ===================================================== */

        .topbar {
            background: var(--primary);
            color: var(--background);
            font-size: 12px;
            padding: 8px 0;
        }

        .topbar-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .topbar-left,
        .topbar-right {
            display: flex;
            align-items: center;
            gap: 18px;
        }


        /* =====================================================
           HEADER
        ===================================================== */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: var(--surface);
            border-bottom: 1px solid var(--border);
        }

        .header-main {
            min-height: 76px;
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .logo {
            font-family: Poppins, sans-serif;
            font-size: 25px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo span {
            color: var(--accent);
        }

        .nav {
            display: flex;
            align-items: center;
            gap: 4px;
        }

        .nav a {
            padding: 9px 12px;
            border-radius: 9px;
            color: var(--text-light);
            font-size: 13px;
            font-weight: 600;
            transition: .2s;
        }

        .nav a:hover,
        .nav a.active {
            color: var(--accent);
            background: var(--accent-light);
        }


        /* =====================================================
           SEARCH
        ===================================================== */

        .search {
            flex: 1;
            max-width: 360px;
            margin-left: auto;
        }

        .search-box {
            height: 44px;
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 0 14px;

            background: var(--surface-soft);
            border: 1px solid transparent;
            border-radius: 11px;

            transition: .2s;
        }

        .search-box:focus-within {
            background: var(--surface);
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(79,70,229,.12);
        }

        .search-box i {
            color: var(--text-light);
        }

        .search-box input {
            width: 100%;
            border: 0;
            outline: 0;
            background: transparent;
            color: var(--text);
        }


        /* =====================================================
           HEADER ACTIONS
        ===================================================== */

        .header-actions {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .icon-btn {
            width: 42px;
            height: 42px;

            border: 0;
            border-radius: 10px;

            background: transparent;
            color: var(--text);

            position: relative;

            font-size: 17px;
        }

        .icon-btn:hover {
            background: var(--surface-soft);
            color: var(--accent);
        }

        .count {
            position: absolute;
            top: 0;
            right: -2px;

            width: 18px;
            height: 18px;

            border-radius: 50%;

            display: grid;
            place-items: center;

            background: var(--danger);
            color: white;

            font-size: 9px;
            font-weight: 800;
        }

        .menu-btn {
            display: none;
        }


        /* =====================================================
           MOBILE NAV
        ===================================================== */

        .mobile-nav {
            display: none;
            border-top: 1px solid var(--border);
            padding: 15px 0;
            background: var(--surface);
        }

        .mobile-nav.active {
            display: block;
        }

        .mobile-nav a {
            display: block;
            padding: 10px 0;
            color: var(--text-light);
            font-weight: 600;
        }


        /* =====================================================
           HERO
        ===================================================== */

        .hero {
            margin-top: 25px;

            min-height: 520px;

            border-radius: 26px;

            overflow: hidden;

            position: relative;

            display: flex;
            align-items: center;

            background:
                linear-gradient(
                    90deg,
                    rgba(15,23,42,.94),
                    rgba(15,23,42,.60),
                    rgba(15,23,42,.15)
                ),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1800&q=90")
                center/cover;
        }

        .hero-content {
            max-width: 650px;
            padding: 55px;
            color: white;
        }

        .hero-tag {
            display: inline-flex;
            align-items: center;
            gap: 8px;

            padding: 8px 13px;

            background: rgba(255,255,255,.13);
            border: 1px solid rgba(255,255,255,.18);

            border-radius: 50px;

            font-size: 12px;
            font-weight: 600;

            margin-bottom: 20px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;

            font-size: clamp(38px, 5vw, 64px);

            line-height: 1.05;

            margin-bottom: 18px;
        }

        .hero p {
            max-width: 560px;

            color: rgba(255,255,255,.82);

            font-size: 16px;

            margin-bottom: 28px;
        }

        .hero-actions {
            display: flex;
            flex-wrap: wrap;
            gap: 12px;
        }


        /* =====================================================
           BUTTONS
        ===================================================== */

        .btn {
            border: 0;
            border-radius: 11px;

            padding: 13px 20px;

            display: inline-flex;
            align-items: center;
            justify-content: center;

            gap: 8px;

            font-size: 13px;
            font-weight: 700;

            transition: .2s;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: var(--accent-dark);
            transform: translateY(-2px);
        }

        .btn-light {
            background: white;
            color: #111827;
        }

        .btn-light:hover {
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            color: var(--text);
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            border-color: var(--accent);
            color: var(--accent);
        }


        /* =====================================================
           QUICK BENEFITS
        ===================================================== */

        .benefits {
            margin-top: -35px;
            position: relative;
            z-index: 5;
        }

        .benefit-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);

            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: 18px;

            box-shadow: var(--shadow);

            overflow: hidden;
        }

        .benefit {
            padding: 23px;

            display: flex;
            align-items: center;
            gap: 14px;

            border-right: 1px solid var(--border);
        }

        .benefit:last-child {
            border-right: 0;
        }

        .benefit-icon {
            width: 46px;
            height: 46px;

            flex-shrink: 0;

            display: grid;
            place-items: center;

            border-radius: 12px;

            background: var(--accent-light);
            color: var(--accent);

            font-size: 18px;
        }

        .benefit strong {
            display: block;
            font-size: 13px;
            margin-bottom: 2px;
        }

        .benefit span {
            color: var(--text-light);
            font-size: 11px;
        }


        /* =====================================================
           SECTIONS
        ===================================================== */

        .section {
            padding: 80px 0 0;
        }

        .section-heading {
            display: flex;
            align-items: end;
            justify-content: space-between;

            gap: 20px;

            margin-bottom: 28px;
        }

        .eyebrow {
            color: var(--accent);

            text-transform: uppercase;

            font-size: 11px;
            font-weight: 800;

            letter-spacing: 1px;

            margin-bottom: 5px;
        }

        .section-heading h2 {
            font-family: Poppins, sans-serif;

            font-size: 29px;

            margin-bottom: 5px;
        }

        .section-heading p {
            color: var(--text-light);
            font-size: 13px;
        }


        /* =====================================================
           CATEGORY GRID
        ===================================================== */

        .category-grid {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 15px;
        }

        .category-card {
            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: 17px;

            padding: 23px 12px;

            text-align: center;

            cursor: pointer;

            transition: .25s;
        }

        .category-card:hover,
        .category-card.active {
            transform: translateY(-5px);

            border-color: var(--accent);

            box-shadow: var(--shadow);
        }

        .category-icon {
            width: 55px;
            height: 55px;

            margin: 0 auto 13px;

            display: grid;
            place-items: center;

            background: var(--accent-light);

            color: var(--accent);

            border-radius: 15px;

            font-size: 21px;
        }

        .category-card h4 {
            font-size: 13px;
            margin-bottom: 4px;
        }

        .category-card span {
            color: var(--text-light);
            font-size: 10px;
        }


        /* =====================================================
           PRODUCT TOOLBAR
        ===================================================== */

        .product-toolbar {
            display: flex;
            justify-content: space-between;
            align-items: center;

            margin-bottom: 22px;

            gap: 15px;
        }

        .result-count {
            color: var(--text-light);
            font-size: 13px;
        }

        .sort-select {
            border: 1px solid var(--border);

            background: var(--surface);
            color: var(--text);

            border-radius: 9px;

            padding: 9px 12px;

            outline: none;

            font-size: 12px;
        }


        /* =====================================================
           PRODUCTS
        ===================================================== */

        .product-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product-card {
            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: 17px;

            overflow: hidden;

            transition: .25s;

            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-image {
            height: 245px;

            position: relative;

            overflow: hidden;

            background: var(--surface-soft);
        }

        .product-image img {
            width: 100%;
            height: 100%;

            object-fit: cover;

            transition: .45s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.06);
        }

        .product-badge {
            position: absolute;

            top: 12px;
            left: 12px;

            padding: 5px 9px;

            border-radius: 6px;

            color: white;

            background: var(--success);

            font-size: 9px;
            font-weight: 800;

            text-transform: uppercase;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .wishlist-btn {
            position: absolute;

            top: 10px;
            right: 10px;

            width: 38px;
            height: 38px;

            border: 0;

            border-radius: 50%;

            background: var(--surface);

            color: var(--text-light);

            box-shadow: 0 4px 15px rgba(0,0,0,.12);
        }

        .wishlist-btn.active {
            color: var(--danger);
        }

        .product-content {
            padding: 17px;
        }

        .product-category {
            color: var(--text-light);

            font-size: 10px;

            text-transform: uppercase;

            letter-spacing: .7px;

            margin-bottom: 5px;
        }

        .product-title {
            font-size: 14px;

            font-weight: 700;

            margin-bottom: 9px;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 6px;

            font-size: 11px;

            margin-bottom: 15px;
        }

        .stars {
            color: var(--warning);
            letter-spacing: 1px;
        }

        .reviews {
            color: var(--text-light);
        }

        .product-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-size: 18px;
            font-weight: 800;
        }

        .old-price {
            color: var(--text-light);

            font-size: 11px;

            text-decoration: line-through;

            margin-left: 4px;
        }

        .cart-add {
            width: 40px;
            height: 40px;

            border: 0;

            border-radius: 10px;

            background: var(--primary);
            color: var(--background);

            transition: .2s;
        }

        .cart-add:hover {
            background: var(--accent);
        }


        /* =====================================================
           EMPTY PRODUCTS
        ===================================================== */

        .empty {
            display: none;

            text-align: center;

            padding: 65px 20px;

            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: 17px;
        }

        .empty i {
            font-size: 42px;

            color: var(--text-light);

            margin-bottom: 15px;
        }

        .empty p {
            color: var(--text-light);
            margin-top: 5px;
            font-size: 13px;
        }


        /* =====================================================
           DEAL SECTION
        ===================================================== */

        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;

            border-radius: 24px;

            overflow: hidden;

            background: #111827;

            color: white;
        }

        .deal-image {
            min-height: 390px;

            background:
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1100&q=90")
                center/cover;
        }

        .deal-content {
            padding: 55px;

            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-label {
            color: #a5b4fc;

            font-size: 11px;

            text-transform: uppercase;

            font-weight: 800;

            letter-spacing: 1px;

            margin-bottom: 9px;
        }

        .deal h2 {
            font-family: Poppins, sans-serif;

            font-size: 35px;

            margin-bottom: 10px;
        }

        .deal p {
            color: #cbd5e1;

            font-size: 13px;

            max-width: 450px;

            margin-bottom: 25px;
        }

        .timer {
            display: flex;
            gap: 9px;

            margin-bottom: 25px;
        }

        .timer-box {
            min-width: 65px;

            padding: 10px;

            background: #1e293b;

            border-radius: 10px;

            text-align: center;
        }

        .timer-box strong {
            display: block;
            font-size: 20px;
        }

        .timer-box span {
            color: #94a3b8;
            font-size: 8px;
        }

        .deal-price {
            font-size: 28px;

            font-weight: 800;

            margin-bottom: 20px;
        }

        .deal-price del {
            color: #94a3b8;

            font-size: 14px;

            margin-left: 7px;
        }


        /* =====================================================
           REVIEWS
        ===================================================== */

        .review-grid {
            display: grid;

            grid-template-columns: repeat(3, 1fr);

            gap: 18px;
        }

        .review {
            background: var(--surface);

            border: 1px solid var(--border);

            border-radius: 17px;

            padding: 25px;
        }

        .review-stars {
            color: var(--warning);

            margin-bottom: 13px;
        }

        .review-text {
            color: var(--text-light);

            font-size: 13px;

            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 43px;
            height: 43px;

            border-radius: 50%;

            object-fit: cover;
        }

        .customer strong {
            display: block;
            font-size: 12px;
        }

        .customer span {
            color: var(--text-light);
            font-size: 10px;
        }


        /* =====================================================
           NEWSLETTER
        ===================================================== */

        .newsletter {
            margin-top: 80px;

            padding: 60px 25px;

            border-radius: 24px;

            text-align: center;

            color: white;

            background:
                radial-gradient(circle at top right, #6366f1, transparent 35%),
                linear-gradient(135deg, #312e81, #4f46e5);
        }

        .newsletter h2 {
            font-family: Poppins, sans-serif;

            font-size: 31px;

            margin-bottom: 7px;
        }

        .newsletter p {
            color: #e0e7ff;

            font-size: 13px;

            margin-bottom: 23px;
        }

        .newsletter-form {
            max-width: 500px;

            margin: auto;

            display: flex;

            gap: 8px;
        }

        .newsletter-form input {
            flex: 1;

            min-width: 0;

            border: 0;

            outline: 0;

            border-radius: 10px;

            padding: 13px 15px;
        }


        /* =====================================================
           FOOTER
        ===================================================== */

        footer {
            margin-top: 80px;

            padding: 55px 0 25px;

            border-top: 1px solid var(--border);

            background: var(--surface);
        }

        .footer-grid {
            display: grid;

            grid-template-columns: 2fr 1fr 1fr 1fr;

            gap: 45px;
        }

        .footer-logo {
            font-family: Poppins, sans-serif;

            font-size: 22px;

            font-weight: 800;

            margin-bottom: 12px;
        }

        .footer-logo span {
            color: var(--accent);
        }

        .footer-about {
            color: var(--text-light);

            max-width: 350px;

            font-size: 12px;
        }

        .footer h4 {
            font-size: 13px;

            margin-bottom: 15px;
        }

        .footer-links {
            display: flex;

            flex-direction: column;

            gap: 9px;
        }

        .footer-links a {
            color: var(--text-light);

            font-size: 12px;
        }

        .footer-links a:hover {
            color: var(--accent);
        }

        .socials {
            display: flex;

            gap: 8px;

            margin-top: 18px;
        }

        .socials a {
            width: 34px;
            height: 34px;

            display: grid;
            place-items: center;

            background: var(--surface-soft);

            border-radius: 8px;

            color: var(--text-light);
        }

        .socials a:hover {
            color: var(--accent);
        }

        .copyright {
            text-align: center;

            border-top: 1px solid var(--border);

            margin-top: 40px;

            padding-top: 20px;

            color: var(--text-light);

            font-size: 11px;
        }


        /* =====================================================
           CART DRAWER
        ===================================================== */

        .cart-overlay {
            position: fixed;

            inset: 0;

            z-index: 500;

            background: rgba(15,23,42,.55);

            opacity: 0;

            visibility: hidden;

            transition: .25s;
        }

        .cart-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .cart {
            position: absolute;

            right: 0;
            top: 0;

            height: 100%;

            width: min(430px, 100%);

            background: var(--surface);

            transform: translateX(100%);

            transition: .3s;

            display: flex;
            flex-direction: column;
        }

        .cart-overlay.active .cart {
            transform: translateX(0);
        }

        .cart-header {
            padding: 20px;

            border-bottom: 1px solid var(--border);

            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .cart-header h3 {
            font-family: Poppins, sans-serif;
        }

        .close-cart {
            width: 35px;
            height: 35px;

            border: 0;

            border-radius: 8px;

            background: var(--surface-soft);

            color: var(--text);
        }

        .cart-items {
            flex: 1;

            overflow-y: auto;

            padding: 15px 20px;
        }

        .cart-item {
            display: flex;

            gap: 12px;

            padding: 13px 0;

            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 65px;
            height: 65px;

            border-radius: 9px;

            object-fit: cover;
        }

        .cart-info {
            flex: 1;
        }

        .cart-title {
            font-size: 12px;

            font-weight: 700;

            margin-bottom: 4px;
        }

        .cart-price {
            font-size: 12px;

            font-weight: 800;
        }

        .quantity {
            display: flex;

            align-items: center;

            gap: 7px;

            margin-top: 7px;
        }

        .quantity button {
            width: 25px;
            height: 25px;

            border: 1px solid var(--border);

            background: var(--surface);

            color: var(--text);

            border-radius: 6px;
        }

        .remove {
            margin-left: 5px;

            border: 0;

            background: transparent;

            color: var(--danger);

            font-size: 10px;
        }

        .cart-footer {
            padding: 20px;

            border-top: 1px solid var(--border);
        }

        .cart-total {
            display: flex;

            justify-content: space-between;

            font-size: 18px;

            font-weight: 800;

            margin-bottom: 15px;
        }

        .checkout {
            width: 100%;
        }

        .empty-cart {
            padding: 65px 20px;

            text-align: center;

            color: var(--text-light);
        }

        .empty-cart i {
            font-size: 45px;

            margin-bottom: 15px;
        }


        /* =====================================================
           TOAST
        ===================================================== */

        .toast {
            position: fixed;

            right: 25px;
            bottom: 25px;

            z-index: 1000;

            padding: 13px 18px;

            border-radius: 10px;

            background: var(--primary);

            color: var(--background);

            box-shadow: var(--shadow);

            font-size: 12px;

            transform: translateY(100px);

            opacity: 0;

            transition: .3s;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }


        /* =====================================================
           RESPONSIVE
        ===================================================== */

        @media(max-width:1100px) {

            .nav {
                display: none;
            }

            .menu-btn {
                display: block;
            }

            .category-grid {
                grid-template-columns: repeat(3, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(3, 1fr);
            }

        }


        @media(max-width:800px) {

            .topbar {
                display: none;
            }

            .container {
                width: min(100% - 24px, var(--container));
            }

            .header-main {
                min-height: 65px;
                gap: 10px;
            }

            .logo {
                font-size: 21px;
            }

            .search {
                display: none;
            }

            .hero {
                min-height: 510px;
                margin-top: 12px;
            }

            .hero-content {
                padding: 30px 23px;
            }

            .hero h1 {
                font-size: 39px;
            }

            .benefits {
                margin-top: 15px;
            }

            .benefit-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .benefit {
                border-bottom: 1px solid var(--border);
            }

            .benefit:nth-child(2) {
                border-right: 0;
            }

            .benefit:nth-child(3),
            .benefit:nth-child(4) {
                border-bottom: 0;
            }

            .category-grid {
                grid-template-columns: repeat(2, 1fr);
            }

            .product-grid {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .product-image {
                height: 185px;
            }

            .product-content {
                padding: 13px;
            }

            .product-title {
                font-size: 12px;
            }

            .price {
                font-size: 15px;
            }

            .deal {
                grid-template-columns: 1fr;
            }

            .deal-image {
                min-height: 250px;
            }

            .deal-content {
                padding: 30px 22px;
            }

            .review-grid {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }

        }


        @media(max-width:500px) {

            .header-actions .icon-btn:first-child {
                display: none;
            }

            .benefit-grid {
                grid-template-columns: 1fr;
            }

            .benefit {
                border-right: 0 !important;
                border-bottom: 1px solid var(--border) !important;
            }

            .benefit:last-child {
                border-bottom: 0 !important;
            }

            .section {
                padding-top: 55px;
            }

            .section-heading {
                align-items: flex-start;
            }

            .section-heading h2 {
                font-size: 23px;
            }

            .product-toolbar {
                align-items: flex-start;
                flex-direction: column;
            }

            .product-grid {
                grid-template-columns: 1fr 1fr;
            }

            .product-image {
                height: 155px;
            }

            .wishlist-btn {
                width: 33px;
                height: 33px;
            }

            .cart-add {
                width: 35px;
                height: 35px;
            }

            .old-price {
                display: block;
                margin-left: 0;
            }

            .newsletter {
                padding: 45px 18px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input,
            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 28px;
            }

            .timer {
                gap: 5px;
            }

            .timer-box {
                min-width: 55px;
            }

            .toast {
                left: 15px;
                right: 15px;
                bottom: 15px;
                text-align: center;
            }

        }

    </style>
</head>


<body>


<!-- =====================================================
     TOP BAR
===================================================== -->

<div class="topbar">

    <div class="container topbar-inner">

        <div class="topbar-left">

            <span>
                <i class="fa-solid fa-truck-fast"></i>
                Free shipping over $50
            </span>

            <span>
                <i class="fa-solid fa-shield-halved"></i>
                Secure checkout
            </span>

        </div>

        <div class="topbar-right">

            <span>Help Center</span>
            <span>Track Order</span>

        </div>

    </div>

</div>


<!-- =====================================================
     HEADER
===================================================== -->

<header>

    <div class="container header-main">

        <button class="icon-btn menu-btn" id="menuBtn">

            <i class="fa-solid fa-bars"></i>

        </button>


        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>


        <nav class="nav">

            <a href="#" class="active">Home</a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Products
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </nav>


        <div class="search">

            <div class="search-box">

                <i class="fa-solid fa-magnifying-glass"></i>

                <input
                    type="search"
                    id="searchInput"
                    placeholder="Search products..."
                    autocomplete="off"
                >

            </div>

        </div>


        <div class="header-actions">

            <button class="icon-btn" id="themeBtn" title="Toggle theme">

                <i class="fa-solid fa-moon"></i>

            </button>


            <button class="icon-btn" id="wishlistBtn">

                <i class="fa-regular fa-heart"></i>

                <span class="count" id="wishlistCount">
                    0
                </span>

            </button>


            <button class="icon-btn" id="cartBtn">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="count" id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>


    <div class="mobile-nav" id="mobileNav">

        <div class="container">

            <a href="#">Home</a>
            <a href="#categories">Categories</a>
            <a href="#products">Products</a>
            <a href="#deals">Deals</a>
            <a href="#reviews">Reviews</a>

        </div>

    </div>

</header>


<main>


<!-- =====================================================
     HERO
===================================================== -->

<section class="hero container">

    <div class="hero-content">

        <div class="hero-tag">

            <i class="fa-solid fa-bolt"></i>

            New season deals are here

        </div>


        <h1>
            Everything you need,
            all in one place.
        </h1>


        <p>
            Discover the latest technology, fashion and everyday
            essentials — carefully selected for modern shoppers.
        </p>


        <div class="hero-actions">

            <button class="btn btn-primary" id="shopNow">

                Shop Now

                <i class="fa-solid fa-arrow-right"></i>

            </button>


            <button class="btn btn-light" id="heroDeals">

                Today's Deals

            </button>

        </div>

    </div>

</section>


<!-- =====================================================
     BENEFITS
===================================================== -->

<section class="benefits">

    <div class="container">

        <div class="benefit-grid">


            <div class="benefit">

                <div class="benefit-icon">
                    <i class="fa-solid fa-truck-fast"></i>
                </div>

                <div>

                    <strong>Free Delivery</strong>

                    <span>
                        Orders over $50
                    </span>

                </div>

            </div>


            <div class="benefit">

                <div class="benefit-icon">
                    <i class="fa-solid fa-rotate-left"></i>
                </div>

                <div>

                    <strong>Easy Returns</strong>

                    <span>
                        30-day guarantee
                    </span>

                </div>

            </div>


            <div class="benefit">

                <div class="benefit-icon">
                    <i class="fa-solid fa-lock"></i>
                </div>

                <div>

                    <strong>Secure Payment</strong>

                    <span>
                        Protected checkout
                    </span>

                </div>

            </div>


            <div class="benefit">

                <div class="benefit-icon">
                    <i class="fa-solid fa-headset"></i>
                </div>

                <div>

                    <strong>24/7 Support</strong>

                    <span>
                        We're here to help
                    </span>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- =====================================================
     CATEGORIES
===================================================== -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-heading">

            <div>

                <div class="eyebrow">
                    Explore
                </div>

                <h2>Shop by Category</h2>

                <p>
                    Browse products based on what you're looking for.
                </p>

            </div>

        </div>


        <div class="category-grid" id="categoryGrid"></div>

    </div>

</section>


<!-- =====================================================
     PRODUCTS
===================================================== -->

<section class="section" id="products">

    <div class="container">

        <div class="section-heading">

            <div>

                <div class="eyebrow">
                    Our Collection
                </div>

                <h2>Popular Products</h2>

                <p>
                    Hand-picked products loved by our customers.
                </p>

            </div>

            <button class="btn btn-outline" id="clearFilters">

                View All

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>


        <div class="product-toolbar">

            <span class="result-count" id="resultCount">
                Showing 8 products
            </span>


            <select class="sort-select" id="sortSelect">

                <option value="default">
                    Sort: Featured
                </option>

                <option value="price-low">
                    Price: Low to High
                </option>

                <option value="price-high">
                    Price: High to Low
                </option>

                <option value="rating">
                    Highest Rated
                </option>

            </select>

        </div>


        <div class="product-grid" id="productGrid"></div>


        <div class="empty" id="emptyState">

            <i class="fa-solid fa-box-open"></i>

            <h3>No products found</h3>

            <p>
                Try another search or category.
            </p>

        </div>

    </div>

</section>


<!-- =====================================================
     DEAL
===================================================== -->

<section class="section" id="deals">

    <div class="container">

        <div class="deal">

            <div class="deal-image"></div>


            <div class="deal-content">

                <div class="deal-label">
                    Deal of the Day
                </div>


                <h2>
                    MacBook Air M2
                </h2>


                <p>
                    Powerful performance, stunning design and
                    incredible portability. Get it before this
                    limited-time offer ends.
                </p>


                <div class="timer">

                    <div class="timer-box">

                        <strong id="days">
                            01
                        </strong>

                        <span>
                            DAYS
                        </span>

                    </div>


                    <div class="timer-box">

                        <strong id="hours">
                            00
                        </strong>

                        <span>
                            HOURS
                        </span>

                    </div>


                    <div class="timer-box">

                        <strong id="minutes">
                            00
                        </strong>

                        <span>
                            MINUTES
                        </span>

                    </div>


                    <div class="timer-box">

                        <strong id="seconds">
                            00
                        </strong>

                        <span>
                            SECONDS
                        </span>

                    </div>

                </div>


                <div class="deal-price">

                    $999

                    <del>
                        $1,199
                    </del>

                </div>


                <button class="btn btn-primary" id="dealBtn">

                    Add to Cart

                    <i class="fa-solid fa-cart-plus"></i>

                </button>

            </div>

        </div>

    </div>

</section>


<!-- =====================================================
     REVIEWS
===================================================== -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-heading">

            <div>

                <div class="eyebrow">
                    Customer Stories
                </div>

                <h2>What shoppers say</h2>

                <p>
                    Real experiences from our customers.
                </p>

            </div>

        </div>


        <div class="review-grid">


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p class="review-text">
                    "The website is really easy to use. I found
                    exactly what I wanted and delivery was faster
                    than expected."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80"
                        alt="Ava Martin"
                    >

                    <div>

                        <strong>
                            Ava Martin
                        </strong>

                        <span>
                            Verified Customer
                        </span>

                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★★
                </div>

                <p class="review-text">
                    "Great product selection and excellent prices.
                    Customer support was also quick and helpful."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80"
                        alt="Michael Lee"
                    >

                    <div>

                        <strong>
                            Michael Lee
                        </strong>

                        <span>
                            Verified Customer
                        </span>

                    </div>

                </div>

            </div>


            <div class="review">

                <div class="review-stars">
                    ★★★★☆
                </div>

                <p class="review-text">
                    "I love how simple the shopping experience is.
                    Everything is organized and easy to find."
                </p>

                <div class="customer">

                    <img
                        src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80"
                        alt="Emma Wilson"
                    >

                    <div>

                        <strong>
                            Emma Wilson
                        </strong>

                        <span>
                            Verified Customer
                        </span>

                    </div>

                </div>

            </div>


        </div>

    </div>

</section>


<!-- =====================================================
     NEWSLETTER
===================================================== -->

<section class="newsletter">

    <div class="container">

        <h2>
            Get the best deals first.
        </h2>

        <p>
            Subscribe to receive new arrivals, exclusive offers
            and shopping inspiration.
        </p>


        <form class="newsletter-form" id="newsletterForm">

            <input
                type="email"
                id="emailInput"
                placeholder="Your email address"
                required
            >

            <button class="btn btn-light">
                Subscribe
            </button>

        </form>

    </div>

</section>


</main>


<!-- =====================================================
     FOOTER
===================================================== -->

<footer>

    <div class="container">

        <div class="footer-grid">


            <div>

                <div class="footer-logo">
                    Nexus<span>Shop</span>
                </div>

                <p class="footer-about">
                    A modern online shopping experience designed
                    to make discovering your favorite products
                    simple, fast and enjoyable.
                </p>


                <div class="socials">

                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-youtube"></i>
                    </a>

                </div>

            </div>


            <div>

                <h4>Shop</h4>

                <div class="footer-links">

                    <a href="#products">
                        Products
                    </a>

                    <a href="#categories">
                        Categories
                    </a>

                    <a href="#deals">
                        Deals
                    </a>

                    <a href="#products">
                        New Arrivals
                    </a>

                </div>

            </div>


            <div>

                <h4>Support</h4>

                <div class="footer-links">

                    <a href="#">
                        Help Center
                    </a>

                    <a href="#">
                        Shipping
                    </a>

                    <a href="#">
                        Returns
                    </a>

                    <a href="#">
                        Contact Us
                    </a>

                </div>

            </div>


            <div>

                <h4>Company</h4>

                <div class="footer-links">

                    <a href="#">
                        About Us
                    </a>

                    <a href="#">
                        Careers
                    </a>

                    <a href="#">
                        Privacy
                    </a>

                    <a href="#">
                        Terms
                    </a>

                </div>

            </div>


        </div>


        <div class="copyright">

            © <span id="year"></span>
            NexusShop. All rights reserved.

        </div>

    </div>

</footer>


<!-- =====================================================
     CART
===================================================== -->

<div class="cart-overlay" id="cartOverlay">

    <div class="cart">

        <div class="cart-header">

            <h3>
                Shopping Cart
            </h3>

            <button class="close-cart" id="closeCart">

                <i class="fa-solid fa-xmark"></i>

            </button>

        </div>


        <div class="cart-items" id="cartItems"></div>


        <div class="cart-footer">

            <div class="cart-total">

                <span>
                    Total
                </span>

                <span id="cartTotal">
                    $0
                </span>

            </div>


            <button class="btn btn-primary checkout" id="checkoutBtn">

                Checkout

                <i class="fa-solid fa-arrow-right"></i>

            </button>

        </div>

    </div>

</div>


<!-- =====================================================
     TOAST
===================================================== -->

<div class="toast" id="toast"></div>


<script>

    /* =====================================================
       DATA
    ===================================================== */

    const CATEGORIES = [

        {
            id: "phones",
            name: "Smartphones",
            icon: "fa-mobile-screen-button"
        },

        {
            id: "laptops",
            name: "Laptops",
            icon: "fa-laptop"
        },

        {
            id: "clothing",
            name: "Clothing",
            icon: "fa-shirt"
        },

        {
            id: "gadgets",
            name: "Gadgets",
            icon: "fa-headphones"
        },

        {
            id: "footwear",
            name: "Footwear",
            icon: "fa-shoe-prints"
        },

        {
            id: "accessories",
            name: "Accessories",
            icon: "fa-watch"
        }

    ];


    const PRODUCTS = [

        {
            id: 1,
            title: "iPhone 14 Pro Max",
            price: 1099,
            oldPrice: 1199,
            rating: 5,
            reviews: 128,
            badge: "New",
            category: "phones",
            image: "https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 2,
            title: 'MacBook Pro 14"',
            price: 1999,
            rating: 4,
            reviews: 86,
            category: "laptops",
            image: "https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 3,
            title: "Apple Watch Series 8",
            price: 349,
            oldPrice: 399,
            rating: 5,
            reviews: 214,
            badge: "Sale",
            category: "accessories",
            image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 4,
            title: "Nike Air Max 270",
            price: 150,
            rating: 4,
            reviews: 53,
            category: "footwear",
            image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 5,
            title: "Sony A7 IV Camera",
            price: 2499,
            rating: 5,
            reviews: 42,
            category: "gadgets",
            image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 6,
            title: "Premium Perfume",
            price: 120,
            rating: 5,
            reviews: 189,
            category: "accessories",
            image: "https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 7,
            title: "Travel Backpack",
            price: 79,
            oldPrice: 99,
            rating: 4,
            reviews: 67,
            badge: "Sale",
            category: "accessories",
            image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"
        },

        {
            id: 8,
            title: "Sony WH-1000XM5",
            price: 399,
            rating: 5,
            reviews: 156,
            category: "gadgets",
            image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"
        }

    ];


    /* =====================================================
       STATE
    ===================================================== */

    let cart = [];

    let wishlist = [];

    let currentCategory = "all";


    /* =====================================================
       ELEMENTS
    ===================================================== */

    const productGrid =
        document.getElementById("productGrid");

    const categoryGrid =
        document.getElementById("categoryGrid");

    const searchInput =
        document.getElementById("searchInput");

    const sortSelect =
        document.getElementById("sortSelect");

    const resultCount =
        document.getElementById("resultCount");

    const emptyState =
        document.getElementById("emptyState");

    const cartItems =
        document.getElementById("cartItems");

    const cartTotal =
        document.getElementById("cartTotal");

    const cartCount =
        document.getElementById("cartCount");

    const wishlistCount =
        document.getElementById("wishlistCount");

    const cartOverlay =
        document.getElementById("cartOverlay");

    const toast =
        document.getElementById("toast");


    /* =====================================================
       TOAST
    ===================================================== */

    function showToast(message) {

        toast.textContent = message;

        toast.classList.add("show");

        setTimeout(() => {

            toast.classList.remove("show");

        }, 2200);

    }


    /* =====================================================
       CATEGORIES
    ===================================================== */

    function renderCategories() {

        categoryGrid.innerHTML = "";


        const allCard =
            document.createElement("div");

        allCard.className =
            "category-card" +
            (currentCategory === "all" ? " active" : "");

        allCard.innerHTML = `

            <div class="category-icon">

                <i class="fa-solid fa-store"></i>

            </div>

            <h4>All Products</h4>

            <span>
                ${PRODUCTS.length} products
            </span>

        `;


        allCard.addEventListener("click", () => {

            currentCategory = "all";

            renderCategories();

            renderProducts();

        });


        categoryGrid.appendChild(allCard);


        CATEGORIES.forEach(category => {

            const count =
                PRODUCTS.filter(
                    product =>
                        product.category === category.id
                ).length;


            const card =
                document.createElement("div");


            card.className =
                "category-card" +
                (
                    currentCategory === category.id
                    ? " active"
                    : ""
                );


            card.innerHTML = `

                <div class="category-icon">

                    <i class="fa-solid ${category.icon}"></i>

                </div>

                <h4>
                    ${category.name}
                </h4>

                <span>
                    ${count} products
                </span>

            `;


            card.addEventListener("click", () => {

                currentCategory = category.id;

                renderCategories();

                renderProducts();

                document
                    .getElementById("products")
                    .scrollIntoView({
                        behavior: "smooth"
                    });

            });


            categoryGrid.appendChild(card);

        });

    }


    /* =====================================================
       GET FILTERED PRODUCTS
    ===================================================== */

    function getFilteredProducts() {

        const search =
            searchInput.value
                .trim()
                .toLowerCase();


        let products =
            PRODUCTS.filter(product => {

                const matchesSearch =
                    product.title
                        .toLowerCase()
                        .includes(search) ||

                    product.category
                        .toLowerCase()
                        .includes(search);


                const matchesCategory =
                    currentCategory === "all" ||
                    product.category === currentCategory;


                return (
                    matchesSearch &&
                    matchesCategory
                );

            });


        const sort =
            sortSelect.value;


        if (sort === "price-low") {

            products.sort(
                (a, b) =>
                    a.price - b.price
            );

        }


        if (sort === "price-high") {

            products.sort(
                (a, b) =>
                    b.price - a.price
            );

        }


        if (sort === "rating") {

            products.sort(
                (a, b) =>
                    b.rating - a.rating
            );

        }


        return products;

    }


    /* =====================================================
       PRODUCTS
    ===================================================== */

    function renderProducts() {

        const products =
            getFilteredProducts();


        productGrid.innerHTML = "";


        resultCount.textContent =
            `Showing ${products.length} product${products.length !== 1 ? "s" : ""}`;


        if (!products.length) {

            emptyState.style.display = "block";

            return;

        }


        emptyState.style.display = "none";


        products.forEach(product => {

            const isWishlisted =
                wishlist.includes(product.id);


            const card =
                document.createElement("article");


            card.className = "product-card";


            card.innerHTML = `

                <div class="product-image">

                    <img
                        src="${product.image}"
                        alt="${product.title}"
                        loading="lazy"
                    >


                    ${
                        product.badge
                        ?
                        `
                        <span class="product-badge ${product.badge === "Sale" ? "sale" : ""}">
                            ${product.badge}
                        </span>
                        `
                        :
                        ""
                    }


                    <button
                        class="wishlist-btn ${isWishlisted ? "active" : ""}"
                        data-wishlist="${product.id}"
                        aria-label="Wishlist"
                    >

                        <i class="${isWishlisted ? "fa-solid" : "fa-regular"} fa-heart"></i>

                    </button>

                </div>


                <div class="product-content">

                    <div class="product-category">
                        ${product.category}
                    </div>


                    <div class="product-title">
                        ${product.title}
                    </div>


                    <div class="rating">

                        <span class="stars">
                            ${"★".repeat(product.rating)}
                        </span>

                        <span class="reviews">
                            ${product.rating}.0 (${product.reviews})
                        </span>

                    </div>


                    <div class="product-bottom">

                        <div class="price">

                            $${product.price.toLocaleString()}

                            ${
                                product.oldPrice
                                ?
                                `
                                <span class="old-price">
                                    $${product.oldPrice.toLocaleString()}
                                </span>
                                `
                                :
                                ""
                            }

                        </div>


                        <button
                            class="cart-add"
                            data-cart="${product.id}"
                            aria-label="Add to cart"
                        >

                            <i class="fa-solid fa-plus"></i>

                        </button>

                    </div>

                </div>

            `;


            productGrid.appendChild(card);

        });


        document
            .querySelectorAll("[data-cart]")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        addToCart(
                            Number(
                                button.dataset.cart
                            )
                        );

                    }
                );

            });


        document
            .querySelectorAll("[data-wishlist]")
            .forEach(button => {

                button.addEventListener(
                    "click",
                    () => {

                        toggleWishlist(
                            Number(
                                button.dataset.wishlist
                            )
                        );

                    }
                );

            });

    }


    /* =====================================================
       SEARCH
    ===================================================== */

    searchInput.addEventListener(
        "input",
        renderProducts
    );


    sortSelect.addEventListener(
        "change",
        renderProducts
    );


    /* =====================================================
       CART
    ===================================================== */

    function addToCart(id) {

        const product =
            PRODUCTS.find(
                product =>
                    product.id === id
            );


        if (!product) return;


        const existing =
            cart.find(
                item =>
                    item.id === id
            );


        if (existing) {

            existing.quantity++;

        } else {

            cart.push({

                ...product,

                quantity: 1

            });

        }


        updateCart();

        showToast(
            `${product.title} added to cart`
        );

    }


    function updateCart() {

        const totalItems =
            cart.reduce(
                (sum, item) =>
                    sum + item.quantity,
                0
            );


        cartCount.textContent =
            totalItems;


        renderCart();

    }


    function renderCart() {

        cartItems.innerHTML = "";


        if (!cart.length) {

            cartItems.innerHTML = `

                <div class="empty-cart">

                    <i class="fa-solid fa-bag-shopping"></i>

                    <h3>
                        Your cart is empty
                    </h3>

                    <p>
                        Add products to get started.
                    </p>

                </div>

            `;


            cartTotal.textContent =
                "$0";


            return;

        }


        cart.forEach(item => {

            const div =
                document.createElement("div");


            div.className =
                "cart-item";


            div.innerHTML = `

                <img
                    src="${item.image}"
                    alt="${item.title}"
                >


                <div class="cart-info">

                    <div class="cart-title">
                        ${item.title}
                    </div>


                    <div class="cart-price">
                        $${(
                            item.price *
                            item.quantity
                        ).toLocaleString()}
                    </div>


                    <div class="quantity">

                        <button
                            onclick="changeQuantity(${item.id}, -1)"
                        >
                            −
                        </button>

                        <span>
                            ${item.quantity}
                        </span>

                        <button
                            onclick="changeQuantity(${item.id}, 1)"
                        >
                            +
                        </button>


                        <button
                            class="remove"
                            onclick="removeFromCart(${item.id})"
                        >
                            Remove
                        </button>

                    </div>

                </div>

            `;


            cartItems.appendChild(div);

        });


        const total =
            cart.reduce(
                (sum, item) =>
                    sum +
                    item.price *
                    item.quantity,
                0
            );


        cartTotal.textContent =
            "$" + total.toLocaleString();

    }


    function changeQuantity(id, amount) {

        const item =
            cart.find(
                item =>
                    item.id === id
            );


        if (!item) return;


        item.quantity += amount;


        if (item.quantity <= 0) {

            removeFromCart(id);

            return;

        }


        updateCart();

    }


    function removeFromCart(id) {

        cart =
            cart.filter(
                item =>
                    item.id !== id
            );


        updateCart();

        showToast(
            "Product removed from cart"
        );

    }


    /* =====================================================
       WISHLIST
    ===================================================== */

    function toggleWishlist(id) {

        const product =
            PRODUCTS.find(
                product =>
                    product.id === id
            );


        if (wishlist.includes(id)) {

            wishlist =
                wishlist.filter(
                    item =>
                        item !== id
                );

            showToast(
                "Removed from wishlist"
            );

        } else {

            wishlist.push(id);

            showToast(
                `${product.title} added to wishlist`
            );

        }


        wishlistCount.textContent =
            wishlist.length;


        renderProducts();

    }


    document
        .getElementById("wishlistBtn")
        .addEventListener("click", () => {

            if (!wishlist.length) {

                showToast(
                    "Your wishlist is empty"
                );

                return;

            }


            const wishlistProducts =
                PRODUCTS.filter(
                    product =>
                        wishlist.includes(
                            product.id
                        )
                );


            productGrid.innerHTML = "";

            emptyState.style.display = "none";


            resultCount.textContent =
                `Wishlist • ${wishlistProducts.length} products`;


            wishlistProducts.forEach(product => {

                const card =
                    document.createElement("article");

                card.className =
                    "product-card";


                card.innerHTML = `

                    <div class="product-image">

                        <img
                            src="${product.image}"
                            alt="${product.title}"
                        >

                    </div>


                    <div class="product-content">

                        <div class="product-category">
                            ${product.category}
                        </div>

                        <div class="product-title">
                            ${product.title}
                        </div>

                        <div class="rating">

                            <span class="stars">
                                ${"★".repeat(product.rating)}
                            </span>

                            <span class="reviews">
                                ${product.reviews} reviews
                            </span>

                        </div>


                        <div class="product-bottom">

                            <div class="price">
                                $${product.price.toLocaleString()}
                            </div>

                            <button
                                class="cart-add"
                                onclick="addToCart(${product.id})"
                            >

                                <i class="fa-solid fa-cart-plus"></i>

                            </button>

                        </div>

                    </div>

                `;


                productGrid.appendChild(card);

            });


            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* =====================================================
       CART DRAWER
    ===================================================== */

    document
        .getElementById("cartBtn")
        .addEventListener("click", openCart);


    document
        .getElementById("closeCart")
        .addEventListener("click", closeCart);


    cartOverlay.addEventListener(
        "click",
        event => {

            if (
                event.target ===
                cartOverlay
            ) {

                closeCart();

            }

        }
    );


    function openCart() {

        cartOverlay.classList.add("active");

        document.body.classList.add(
            "no-scroll"
        );

    }


    function closeCart() {

        cartOverlay.classList.remove("active");

        document.body.classList.remove(
            "no-scroll"
        );

    }


    /* =====================================================
       DEAL
    ===================================================== */

    document
        .getElementById("dealBtn")
        .addEventListener("click", () => {

            const dealProduct = {

                id: 999,

                title: "MacBook Air M2",

                price: 999,

                image:
                    "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85",

                quantity: 1

            };


            const existing =
                cart.find(
                    item =>
                        item.id === 999
                );


            if (existing) {

                existing.quantity++;

            } else {

                cart.push(dealProduct);

            }


            updateCart();

            showToast(
                "MacBook Air M2 added to cart"
            );

        });


    /* =====================================================
       COUNTDOWN
    ===================================================== */

    const dealEnd =
        new Date().getTime() +
        24 * 60 * 60 * 1000;


    function updateTimer() {

        const now =
            new Date().getTime();


        const difference =
            dealEnd - now;


        if (difference <= 0) return;


        const days =
            Math.floor(
                difference /
                (1000 * 60 * 60 * 24)
            );


        const hours =
            Math.floor(
                difference /
                (1000 * 60 * 60) %
                24
            );


        const minutes =
            Math.floor(
                difference /
                (1000 * 60) %
                60
            );


        const seconds =
            Math.floor(
                difference /
                1000 %
                60
            );


        document.getElementById("days")
            .textContent =
            String(days).padStart(2, "0");


        document.getElementById("hours")
            .textContent =
            String(hours).padStart(2, "0");


        document.getElementById("minutes")
            .textContent =
            String(minutes).padStart(2, "0");


        document.getElementById("seconds")
            .textContent =
            String(seconds).padStart(2, "0");

    }


    setInterval(
        updateTimer,
        1000
    );


    updateTimer();


    /* =====================================================
       HERO BUTTONS
    ===================================================== */

    document
        .getElementById("shopNow")
        .addEventListener("click", () => {

            document
                .getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    document
        .getElementById("heroDeals")
        .addEventListener("click", () => {

            document
                .getElementById("deals")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });


    /* =====================================================
       CLEAR FILTERS
    ===================================================== */

    document
        .getElementById("clearFilters")
        .addEventListener("click", () => {

            currentCategory = "all";

            searchInput.value = "";

            sortSelect.value = "default";

            renderCategories();

            renderProducts();

        });


    /* =====================================================
       MOBILE MENU
    ===================================================== */

    document
        .getElementById("menuBtn")
        .addEventListener("click", () => {

            document
                .getElementById("mobileNav")
                .classList.toggle("active");

        });


    document
        .querySelectorAll(".mobile-nav a")
        .forEach(link => {

            link.addEventListener(
                "click",
                () => {

                    document
                        .getElementById("mobileNav")
                        .classList.remove("active");

                }
            );

        });


    /* =====================================================
       DARK MODE
    ===================================================== */

    document
        .getElementById("themeBtn")
        .addEventListener("click", () => {

            document.body.classList.toggle("dark");


            const icon =
                document.querySelector(
                    "#themeBtn i"
                );


            if (
                document.body.classList.contains(
                    "dark"
                )
            ) {

                icon.className =
                    "fa-solid fa-sun";

                showToast(
                    "Dark mode enabled"
                );

            } else {

                icon.className =
                    "fa-solid fa-moon";

                showToast(
                    "Light mode enabled"
                );

            }

        });


    /* =====================================================
       NEWSLETTER
    ===================================================== */

    document
        .getElementById("newsletterForm")
        .addEventListener(
            "submit",
            event => {

                event.preventDefault();


                const email =
                    document
                        .getElementById("emailInput")
                        .value
                        .trim();


                if (!email) return;


                showToast(
                    "You're subscribed! 🎉"
                );


                event.target.reset();

            }
        );


    /* =====================================================
       CHECKOUT
    ===================================================== */

    document
        .getElementById("checkoutBtn")
        .addEventListener(
            "click",
            () => {

                if (!cart.length) {

                    showToast(
                        "Your cart is empty"
                    );

                    return;

                }


                showToast(
                    "Checkout is ready — demo mode"
                );

            }
        );


    /* =====================================================
       YEAR
    ===================================================== */

    document
        .getElementById("year")
        .textContent =
        new Date().getFullYear();


    /* =====================================================
       INITIALIZE
    ===================================================== */

    renderCategories();

    renderProducts();

    updateCart();

</script>

</body>
</html>
