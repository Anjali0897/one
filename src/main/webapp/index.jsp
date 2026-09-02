```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>NexusShop — Modern Shopping</title>

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Poppins:wght@600;700;800&display=swap" rel="stylesheet">

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

    <style>

        /* =========================================================
           ROOT
        ========================================================= */

        :root {
            --primary: #111827;
            --primary-light: #1f2937;
            --accent: #2563eb;
            --accent-hover: #1d4ed8;
            --accent-light: #eff6ff;

            --success: #16a34a;
            --danger: #ef4444;
            --warning: #f59e0b;

            --bg: #f8fafc;
            --white: #ffffff;
            --surface: #f1f5f9;
            --border: #e5e7eb;

            --text: #111827;
            --muted: #64748b;

            --radius: 16px;
            --shadow: 0 8px 30px rgba(15, 23, 42, 0.08);

            --container: 1180px;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html {
            scroll-behavior: smooth;
        }

        body {
            font-family: Inter, sans-serif;
            background: var(--bg);
            color: var(--text);
            line-height: 1.5;
        }

        body.no-scroll {
            overflow: hidden;
        }

        button,
        input {
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
            max-width: 100%;
        }

        .container {
            width: min(100% - 32px, var(--container));
            margin: auto;
        }

        /* =========================================================
           TOP BAR
        ========================================================= */

        .top-bar {
            background: var(--primary);
            color: white;
            font-size: 13px;
            padding: 8px 0;
        }

        .top-bar-inner {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-bar-right {
            display: flex;
            gap: 18px;
        }

        /* =========================================================
           HEADER
        ========================================================= */

        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 255, 255, 0.96);
            backdrop-filter: blur(12px);
            border-bottom: 1px solid var(--border);
        }

        .header-inner {
            min-height: 72px;
            display: flex;
            align-items: center;
            gap: 28px;
        }

        .logo {
            font-family: Poppins, sans-serif;
            font-size: 24px;
            font-weight: 800;
            white-space: nowrap;
        }

        .logo span {
            color: var(--accent);
        }

        .desktop-nav {
            display: flex;
            gap: 6px;
            flex: 1;
        }

        .desktop-nav a {
            padding: 9px 12px;
            border-radius: 8px;
            font-size: 14px;
            font-weight: 600;
            color: var(--muted);
            transition: 0.2s;
        }

        .desktop-nav a:hover,
        .desktop-nav a.active {
            color: var(--accent);
            background: var(--accent-light);
        }

        /* Search */

        .search-wrapper {
            width: 300px;
            position: relative;
        }

        .search-box {
            height: 42px;
            background: var(--surface);
            border: 1px solid transparent;
            border-radius: 10px;
            display: flex;
            align-items: center;
            padding: 0 12px;
            gap: 8px;
            transition: 0.2s;
        }

        .search-box:focus-within {
            background: white;
            border-color: var(--accent);
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        }

        .search-box i {
            color: var(--muted);
        }

        .search-box input {
            border: 0;
            outline: 0;
            background: transparent;
            width: 100%;
            font-size: 14px;
        }

        /* Header actions */

        .header-actions {
            display: flex;
            align-items: center;
            gap: 5px;
        }

        .header-btn {
            width: 40px;
            height: 40px;
            border: 0;
            background: transparent;
            border-radius: 10px;
            position: relative;
            font-size: 17px;
            color: var(--primary);
        }

        .header-btn:hover {
            background: var(--surface);
            color: var(--accent);
        }

        .badge-count {
            position: absolute;
            top: 1px;
            right: 0;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            background: var(--danger);
            color: white;
            font-size: 10px;
            font-weight: 700;
            display: grid;
            place-items: center;
        }

        .mobile-menu-btn {
            display: none;
            border: 0;
            background: transparent;
            font-size: 21px;
        }

        /* =========================================================
           HERO
        ========================================================= */

        .hero {
            margin-top: 20px;
            border-radius: 22px;
            min-height: 470px;
            background:
                linear-gradient(90deg,
                rgba(15, 23, 42, .9),
                rgba(15, 23, 42, .45)),
                url("https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1600&q=85")
                center/cover;

            display: flex;
            align-items: center;
            color: white;
            overflow: hidden;
        }

        .hero-content {
            max-width: 650px;
            padding: 50px;
        }

        .hero-label {
            display: inline-flex;
            align-items: center;
            gap: 7px;
            background: rgba(255,255,255,.14);
            padding: 8px 13px;
            border-radius: 50px;
            font-size: 13px;
            margin-bottom: 18px;
        }

        .hero h1 {
            font-family: Poppins, sans-serif;
            font-size: clamp(34px, 5vw, 58px);
            line-height: 1.1;
            margin-bottom: 18px;
        }

        .hero p {
            color: rgba(255,255,255,.85);
            max-width: 570px;
            margin-bottom: 28px;
            font-size: 16px;
        }

        .hero-buttons {
            display: flex;
            gap: 12px;
            flex-wrap: wrap;
        }

        /* Buttons */

        .btn {
            border: 0;
            border-radius: 10px;
            padding: 12px 19px;
            display: inline-flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
            font-weight: 700;
            transition: .2s;
        }

        .btn-primary {
            background: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background: var(--accent-hover);
            transform: translateY(-1px);
        }

        .btn-white {
            background: white;
            color: var(--primary);
        }

        .btn-white:hover {
            transform: translateY(-1px);
        }

        /* =========================================================
           SECTION
        ========================================================= */

        .section {
            padding: 70px 0;
        }

        .section-header {
            display: flex;
            align-items: end;
            justify-content: space-between;
            margin-bottom: 28px;
            gap: 20px;
        }

        .section-title h2 {
            font-family: Poppins, sans-serif;
            font-size: 28px;
            margin-bottom: 5px;
        }

        .section-title p {
            color: var(--muted);
            font-size: 14px;
        }

        .view-all {
            color: var(--accent);
            font-weight: 700;
            font-size: 14px;
        }

        /* =========================================================
           CATEGORIES
        ========================================================= */

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 16px;
        }

        .category {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 22px 12px;
            text-align: center;
            transition: .2s;
            cursor: pointer;
        }

        .category:hover,
        .category.active {
            border-color: var(--accent);
            box-shadow: var(--shadow);
            transform: translateY(-4px);
        }

        .category-icon {
            width: 52px;
            height: 52px;
            margin: auto auto 12px;
            border-radius: 14px;
            background: var(--accent-light);
            color: var(--accent);
            display: grid;
            place-items: center;
            font-size: 21px;
        }

        .category h4 {
            font-size: 14px;
            margin-bottom: 4px;
        }

        .category small {
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================================================
           PRODUCTS
        ========================================================= */

        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
        }

        .product {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            overflow: hidden;
            transition: .25s;
            position: relative;
        }

        .product:hover {
            transform: translateY(-5px);
            box-shadow: var(--shadow);
        }

        .product-image {
            height: 230px;
            background: var(--surface);
            position: relative;
            overflow: hidden;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: .4s;
        }

        .product:hover .product-image img {
            transform: scale(1.05);
        }

        .product-badge {
            position: absolute;
            left: 12px;
            top: 12px;
            padding: 5px 9px;
            background: var(--success);
            color: white;
            border-radius: 6px;
            font-size: 11px;
            font-weight: 700;
        }

        .product-badge.sale {
            background: var(--danger);
        }

        .wishlist {
            position: absolute;
            top: 10px;
            right: 10px;
            width: 38px;
            height: 38px;
            border: 0;
            border-radius: 50%;
            background: white;
            box-shadow: 0 3px 12px rgba(0,0,0,.12);
            color: var(--muted);
        }

        .wishlist.active {
            color: var(--danger);
        }

        .product-info {
            padding: 17px;
        }

        .product-category {
            color: var(--muted);
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: .5px;
            margin-bottom: 5px;
        }

        .product-title {
            font-weight: 700;
            font-size: 15px;
            margin-bottom: 9px;
        }

        .rating {
            display: flex;
            align-items: center;
            gap: 5px;
            font-size: 12px;
            margin-bottom: 12px;
        }

        .stars {
            color: var(--warning);
        }

        .reviews {
            color: var(--muted);
        }

        .product-bottom {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .price {
            font-weight: 800;
            font-size: 18px;
        }

        .old-price {
            color: var(--muted);
            text-decoration: line-through;
            font-size: 12px;
            margin-left: 5px;
        }

        .add-cart {
            border: 0;
            width: 40px;
            height: 40px;
            border-radius: 10px;
            background: var(--primary);
            color: white;
            transition: .2s;
        }

        .add-cart:hover {
            background: var(--accent);
        }

        /* Empty state */

        .empty-state {
            display: none;
            text-align: center;
            padding: 60px 20px;
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
        }

        .empty-state i {
            font-size: 40px;
            color: var(--muted);
            margin-bottom: 15px;
        }

        /* =========================================================
           DEAL
        ========================================================= */

        .deal {
            background: var(--primary);
            border-radius: 22px;
            overflow: hidden;
            color: white;
            display: grid;
            grid-template-columns: 1fr 1fr;
        }

        .deal-image {
            min-height: 350px;
            background:
                url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85")
                center/cover;
        }

        .deal-content {
            padding: 50px;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .deal-label {
            color: #60a5fa;
            font-size: 13px;
            font-weight: 700;
            text-transform: uppercase;
            margin-bottom: 10px;
        }

        .deal h2 {
            font-family: Poppins;
            font-size: 32px;
            margin-bottom: 10px;
        }

        .deal-description {
            color: #cbd5e1;
            margin-bottom: 24px;
        }

        .timer {
            display: flex;
            gap: 10px;
            margin-bottom: 25px;
        }

        .time {
            background: #1e293b;
            border-radius: 10px;
            min-width: 62px;
            padding: 10px;
            text-align: center;
        }

        .time strong {
            display: block;
            font-size: 20px;
        }

        .time span {
            font-size: 10px;
            color: #94a3b8;
        }

        .deal-price {
            font-size: 27px;
            font-weight: 800;
            margin-bottom: 20px;
        }

        .deal-price del {
            font-size: 14px;
            color: #94a3b8;
            margin-left: 7px;
        }

        /* =========================================================
           FEATURES
        ========================================================= */

        .features {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            border: 1px solid var(--border);
            background: white;
            border-radius: var(--radius);
            overflow: hidden;
        }

        .feature {
            padding: 25px;
            display: flex;
            gap: 14px;
            align-items: center;
            border-right: 1px solid var(--border);
        }

        .feature:last-child {
            border-right: 0;
        }

        .feature i {
            font-size: 23px;
            color: var(--accent);
        }

        .feature strong {
            display: block;
            font-size: 14px;
            margin-bottom: 3px;
        }

        .feature span {
            font-size: 12px;
            color: var(--muted);
        }

        /* =========================================================
           TESTIMONIALS
        ========================================================= */

        .testimonials {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 18px;
        }

        .testimonial {
            background: white;
            border: 1px solid var(--border);
            border-radius: var(--radius);
            padding: 25px;
        }

        .testimonial-stars {
            color: var(--warning);
            margin-bottom: 13px;
        }

        .testimonial p {
            color: #475569;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .customer {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .customer img {
            width: 42px;
            height: 42px;
            border-radius: 50%;
            object-fit: cover;
        }

        .customer strong {
            font-size: 13px;
        }

        .customer span {
            display: block;
            color: var(--muted);
            font-size: 11px;
        }

        /* =========================================================
           NEWSLETTER
        ========================================================= */

        .newsletter {
            background: linear-gradient(135deg, #1e3a8a, #2563eb);
            color: white;
            border-radius: 22px;
            padding: 55px 25px;
            text-align: center;
        }

        .newsletter h2 {
            font-family: Poppins;
            font-size: 30px;
            margin-bottom: 8px;
        }

        .newsletter p {
            color: #dbeafe;
            margin-bottom: 24px;
        }

        .newsletter-form {
            display: flex;
            justify-content: center;
            max-width: 500px;
            margin: auto;
            gap: 8px;
        }

        .newsletter-form input {
            flex: 1;
            min-width: 0;
            border: 0;
            border-radius: 10px;
            padding: 13px 15px;
            outline: none;
        }

        /* =========================================================
           FOOTER
        ========================================================= */

        footer {
            background: white;
            border-top: 1px solid var(--border);
            padding: 55px 0 25px;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-logo {
            font-family: Poppins;
            font-size: 21px;
            font-weight: 800;
            margin-bottom: 12px;
        }

        .footer-logo span {
            color: var(--accent);
        }

        .footer-about {
            color: var(--muted);
            font-size: 13px;
            max-width: 350px;
        }

        .footer h4 {
            margin-bottom: 13px;
        }

        .footer-links {
            display: flex;
            flex-direction: column;
            gap: 9px;
        }

        .footer-links a {
            color: var(--muted);
            font-size: 13px;
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
            width: 35px;
            height: 35px;
            border-radius: 8px;
            background: var(--surface);
            display: grid;
            place-items: center;
            color: var(--muted);
        }

        .copyright {
            text-align: center;
            border-top: 1px solid var(--border);
            margin-top: 40px;
            padding-top: 20px;
            color: var(--muted);
            font-size: 12px;
        }

        /* =========================================================
           CART DRAWER
        ========================================================= */

        .cart-overlay {
            position: fixed;
            inset: 0;
            background: rgba(15,23,42,.5);
            z-index: 200;
            opacity: 0;
            visibility: hidden;
            transition: .25s;
        }

        .cart-overlay.active {
            opacity: 1;
            visibility: visible;
        }

        .cart-drawer {
            position: absolute;
            right: 0;
            top: 0;
            height: 100%;
            width: min(420px, 100%);
            background: white;
            transform: translateX(100%);
            transition: .3s;
            display: flex;
            flex-direction: column;
        }

        .cart-overlay.active .cart-drawer {
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
            font-family: Poppins;
        }

        .close-cart {
            border: 0;
            background: var(--surface);
            width: 35px;
            height: 35px;
            border-radius: 8px;
        }

        .cart-items {
            flex: 1;
            overflow-y: auto;
            padding: 15px;
        }

        .cart-item {
            display: flex;
            gap: 12px;
            padding: 12px 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item img {
            width: 65px;
            height: 65px;
            object-fit: cover;
            border-radius: 8px;
        }

        .cart-item-info {
            flex: 1;
        }

        .cart-item-title {
            font-size: 13px;
            font-weight: 700;
        }

        .cart-item-price {
            font-size: 13px;
            margin-top: 4px;
            font-weight: 700;
        }

        .quantity {
            display: flex;
            align-items: center;
            gap: 7px;
            margin-top: 7px;
        }

        .quantity button {
            border: 1px solid var(--border);
            background: white;
            width: 24px;
            height: 24px;
            border-radius: 5px;
        }

        .remove-item {
            border: 0;
            background: transparent;
            color: var(--danger);
            font-size: 12px;
        }

        .cart-footer {
            border-top: 1px solid var(--border);
            padding: 20px;
        }

        .cart-total {
            display: flex;
            justify-content: space-between;
            font-size: 18px;
            font-weight: 800;
            margin-bottom: 15px;
        }

        .checkout-btn {
            width: 100%;
            padding: 14px;
        }

        .empty-cart {
            text-align: center;
            padding: 60px 20px;
            color: var(--muted);
        }

        .empty-cart i {
            font-size: 45px;
            margin-bottom: 15px;
        }

        /* =========================================================
           TOAST
        ========================================================= */

        .toast {
            position: fixed;
            bottom: 25px;
            right: 25px;
            background: var(--primary);
            color: white;
            padding: 13px 18px;
            border-radius: 10px;
            box-shadow: var(--shadow);
            transform: translateY(100px);
            opacity: 0;
            transition: .3s;
            z-index: 500;
            font-size: 13px;
        }

        .toast.show {
            transform: translateY(0);
            opacity: 1;
        }

        /* =========================================================
           MOBILE NAV
        ========================================================= */

        .mobile-nav {
            display: none;
            background: white;
            border-top: 1px solid var(--border);
            padding: 15px 0;
        }

        .mobile-nav.active {
            display: block;
        }

        .mobile-nav a {
            display: block;
            padding: 11px 0;
            font-weight: 600;
            color: var(--muted);
        }

        /* =========================================================
           RESPONSIVE
        ========================================================= */

        @media(max-width:1100px) {

            .desktop-nav {
                display: none;
            }

            .mobile-menu-btn {
                display: block;
            }

            .header-inner {
                gap: 15px;
            }

            .search-wrapper {
                margin-left: auto;
            }

            .categories {
                grid-template-columns: repeat(3, 1fr);
            }

            .products {
                grid-template-columns: repeat(3, 1fr);
            }

            .features {
                grid-template-columns: repeat(2, 1fr);
            }

            .feature:nth-child(2) {
                border-right: 0;
            }

            .feature:nth-child(-n+2) {
                border-bottom: 1px solid var(--border);
            }

            .testimonials {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width:760px) {

            .top-bar {
                display: none;
            }

            .container {
                width: min(100% - 24px, var(--container));
            }

            .header-inner {
                min-height: 62px;
            }

            .logo {
                font-size: 20px;
            }

            .search-wrapper {
                display: none;
            }

            .hero {
                min-height: 500px;
                margin-top: 12px;
            }

            .hero-content {
                padding: 30px 22px;
            }

            .hero h1 {
                font-size: 36px;
            }

            .section {
                padding: 50px 0;
            }

            .section-header {
                align-items: flex-start;
            }

            .section-title h2 {
                font-size: 24px;
            }

            .categories {
                grid-template-columns: repeat(2, 1fr);
            }

            .products {
                grid-template-columns: repeat(2, 1fr);
                gap: 12px;
            }

            .product-image {
                height: 180px;
            }

            .product-info {
                padding: 13px;
            }

            .product-title {
                font-size: 13px;
            }

            .price {
                font-size: 16px;
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

            .features {
                grid-template-columns: 1fr;
            }

            .feature {
                border-right: 0 !important;
                border-bottom: 1px solid var(--border);
            }

            .feature:last-child {
                border-bottom: 0;
            }

            .testimonials {
                grid-template-columns: 1fr;
            }

            .footer-grid {
                grid-template-columns: 1fr 1fr;
            }
        }

        @media(max-width:480px) {

            .categories {
                gap: 10px;
            }

            .category {
                padding: 16px 8px;
            }

            .category-icon {
                width: 45px;
                height: 45px;
            }

            .products {
                grid-template-columns: 1fr 1fr;
            }

            .product-image {
                height: 150px;
            }

            .product-bottom {
                align-items: center;
            }

            .old-price {
                display: block;
                margin-left: 0;
            }

            .add-cart {
                width: 35px;
                height: 35px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .newsletter-form input {
                width: 100%;
                padding: 13px;
            }

            .newsletter-form button {
                width: 100%;
            }

            .footer-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }

            .top-bar-right {
                display: none;
            }
        }

    </style>
</head>

<body>

<!-- =========================================================
     TOP BAR
========================================================= -->

<div class="top-bar">
    <div class="container top-bar-inner">
        <span><i class="fa-solid fa-truck-fast"></i> Free shipping on orders over $50</span>

        <div class="top-bar-right">
            <span>Help Center</span>
            <span>Track Order</span>
        </div>
    </div>
</div>


<!-- =========================================================
     HEADER
========================================================= -->

<header>

    <div class="container header-inner">

        <button class="mobile-menu-btn" id="mobileMenuBtn">
            <i class="fa-solid fa-bars"></i>
        </button>

        <a href="#" class="logo">
            Nexus<span>Shop</span>
        </a>

        <nav class="desktop-nav">

            <a href="#" class="active">Home</a>

            <a href="#categories">
                Categories
            </a>

            <a href="#products">
                Trending
            </a>

            <a href="#deals">
                Deals
            </a>

            <a href="#reviews">
                Reviews
            </a>

        </nav>


        <div class="search-wrapper">

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

            <button class="header-btn" title="Account">
                <i class="fa-regular fa-user"></i>
            </button>

            <button class="header-btn" id="wishlistBtn" title="Wishlist">

                <i class="fa-regular fa-heart"></i>

                <span class="badge-count" id="wishlistCount">
                    0
                </span>

            </button>

            <button class="header-btn" id="cartBtn" title="Shopping Cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <span class="badge-count" id="cartCount">
                    0
                </span>

            </button>

        </div>

    </div>


    <!-- Mobile navigation -->

    <div class="mobile-nav" id="mobileNav">

        <div class="container">

            <a href="#">Home</a>

            <a href="#categories">Categories</a>

            <a href="#products">Trending Products</a>

            <a href="#deals">Deals</a>

            <a href="#reviews">Reviews</a>

        </div>

    </div>

</header>


<main>

<!-- =========================================================
     HERO
========================================================= -->

<section class="hero container">

<div class="hero-label">
    <i class="fa-solid fa-tag"></i>
    Special Offer — 20% OFF
</div>

<h1>
    Everything you need, all in one place.
</h1>

<p>
    Discover quality products, amazing prices and
    exclusive offers with fast and reliable delivery.
</p>

        <div class="hero-buttons">

            <button class="btn btn-primary" id="shopNow">
                Shop Now
                <i class="fa-solid fa-arrow-right"></i>
            </button>

            <button class="btn btn-white" id="heroDeals">
                View Deals
            </button>

        </div>

    </div>

</section>


<!-- =========================================================
     FEATURES
========================================================= -->

<section class="section">

    <div class="container">

        <div class="features">

            <div class="feature">

                <i class="fa-solid fa-truck-fast"></i>

                <div>
                    <strong>Free Shipping</strong>
                    <span>On orders over $50</span>
                </div>

            </div>

            <div class="feature">

                <i class="fa-solid fa-rotate-left"></i>

                <div>
                    <strong>Easy Returns</strong>
                    <span>30-day return policy</span>
                </div>

            </div>

            <div class="feature">

                <i class="fa-solid fa-shield-halved"></i>

                <div>
                    <strong>Secure Payment</strong>
                    <span>100% protected checkout</span>
                </div>

            </div>

            <div class="feature">

                <i class="fa-solid fa-headset"></i>

                <div>
                    <strong>24/7 Support</strong>
                    <span>We're here to help</span>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     CATEGORIES
========================================================= -->

<section class="section" id="categories">

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>Shop by Category</h2>

                <p>
                    Find exactly what you're looking for
                </p>

            </div>

            <a href="#products" class="view-all">
                View all →
            </a>

        </div>


        <div class="categories" id="categoriesGrid">

        </div>

    </div>

</section>


<!-- =========================================================
     PRODUCTS
========================================================= -->

<section class="section" id="products">

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>Popular Products</h2>

<p>
    Customer favorites picked just for you
</p>
            </div>

        </div>


        <div class="products" id="productsGrid">

        </div>


        <div class="empty-state" id="emptyState">

            <i class="fa-solid fa-box-open"></i>

            <h3>No products found</h3>

            <p>
                Try searching for another product or category.
            </p>

        </div>

    </div>

</section>


<!-- =========================================================
     DEAL
========================================================= -->

<section class="section" id="deals">

    <div class="container">

        <div class="deal">

            <div class="deal-image"></div>

            <div class="deal-content">

                <div class="deal-label">
                    Limited Time Offer
                </div>

                <h2>MacBook Air M2</h2>

                <p class="deal-description">
                    Powerful performance in an incredibly thin and
                    lightweight design.
                </p>


                <div class="timer">

                    <div class="time">
                        <strong id="days">01</strong>
                        <span>DAYS</span>
                    </div>

                    <div class="time">
                        <strong id="hours">00</strong>
                        <span>HOURS</span>
                    </div>

                    <div class="time">
                        <strong id="minutes">00</strong>
                        <span>MINUTES</span>
                    </div>

                    <div class="time">
                        <strong id="seconds">00</strong>
                        <span>SECONDS</span>
                    </div>

                </div>


                <div class="deal-price">

                    $999

                    <del>$1,199</del>

                </div>


                <button class="btn btn-primary" id="buyDeal">
                    Add Deal to Cart
                    <i class="fa-solid fa-cart-plus"></i>
                </button>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     REVIEWS
========================================================= -->

<section class="section" id="reviews">

    <div class="container">

        <div class="section-header">

            <div class="section-title">

                <h2>What our customers say</h2>

                <p>
                    Thousands of happy shoppers
                </p>

            </div>

        </div>


        <div class="testimonials">

            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "The ordering process was super easy and my
                    package arrived earlier than expected. Great
                    experience!"
                </p>

                <div class="customer">

                    <img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Ava Martin</strong>
                        <span>Verified Customer</span>
                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★★
                </div>

                <p>
                    "Amazing selection and really good prices.
                    Customer support was also very helpful."
                </p>

                <div class="customer">

                    <img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Michael Lee</strong>
                        <span>Verified Customer</span>
                    </div>

                </div>

            </div>


            <div class="testimonial">

                <div class="testimonial-stars">
                    ★★★★☆
                </div>

                <p>
                    "I love how simple the website is to navigate.
                    Found what I wanted within a few minutes."
                </p>

                <div class="customer">

                    <img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80">

                    <div>
                        <strong>Emma Wilson</strong>
                        <span>Verified Customer</span>
                    </div>

                </div>

            </div>

        </div>

    </div>

</section>


<!-- =========================================================
     NEWSLETTER
========================================================= -->

<section class="section">

    <div class="container">

        <div class="newsletter">

            <h2>Stay in the loop</h2>

            <p>
                Get exclusive discounts and updates delivered to your inbox.
            </p>


            <form class="newsletter-form" id="newsletterForm">

                <input
                    type="email"
                    id="newsletterEmail"
                    placeholder="Enter your email address"
                    required
                >

                <button class="btn btn-white">
                    Subscribe
                </button>

            </form>

        </div>

    </div>

</section>

</main>


<!-- =========================================================
     FOOTER
========================================================= -->

<footer>

    <div class="container">

        <div class="footer-grid">

            <div>

                <div class="footer-logo">
                    Nexus<span>Shop</span>
                </div>

                <p class="footer-about">
                    A modern shopping experience designed to make
                    discovering and buying your favorite products simple.
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


            <div class="footer">

                <h4>Shop</h4>

                <div class="footer-links">
                    <a href="#products">All Products</a>
                    <a href="#categories">Categories</a>
                    <a href="#deals">Deals</a>
                    <a href="#">New Arrivals</a>
                </div>

            </div>


            <div class="footer">

                <h4>Support</h4>

                <div class="footer-links">
                    <a href="#">Help Center</a>
                    <a href="#">Shipping</a>
                    <a href="#">Returns</a>
                    <a href="#">Contact Us</a>
                </div>

            </div>


            <div class="footer">

                <h4>Company</h4>

                <div class="footer-links">
                    <a href="#">About Us</a>
                    <a href="#">Careers</a>
                    <a href="#">Privacy</a>
                    <a href="#">Terms</a>
                </div>

            </div>

        </div>


        <div class="copyright">
            © <span id="year"></span> NexusShop. All rights reserved.
        </div>

    </div>

</footer>


<!-- =========================================================
     CART DRAWER
========================================================= -->

<div class="cart-overlay" id="cartOverlay">

    <div class="cart-drawer">

        <div class="cart-header">

            <h3>Your Cart</h3>

            <button class="close-cart" id="closeCart">
                <i class="fa-solid fa-xmark"></i>
            </button>

        </div>


        <div class="cart-items" id="cartItems">

        </div>


        <div class="cart-footer">

            <div class="cart-total">

                <span>Total</span>

                <span id="cartTotal">
                    $0
                </span>

            </div>

            <button class="btn btn-primary checkout-btn" id="checkoutBtn">
                Proceed to Checkout
                <i class="fa-solid fa-arrow-right"></i>
            </button>

        </div>

    </div>

</div>


<!-- Toast -->

<div class="toast" id="toast"></div>


<script>

/* =========================================================
   DATA
========================================================= */

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


/* =========================================================
   STATE
========================================================= */

let cart = [];
let wishlist = [];


/* =========================================================
   ELEMENTS
========================================================= */

const productsGrid = document.getElementById("productsGrid");
const categoriesGrid = document.getElementById("categoriesGrid");
const searchInput = document.getElementById("searchInput");

const cartCount = document.getElementById("cartCount");
const wishlistCount = document.getElementById("wishlistCount");

const cartOverlay = document.getElementById("cartOverlay");
const cartItems = document.getElementById("cartItems");
const cartTotal = document.getElementById("cartTotal");

const toast = document.getElementById("toast");


/* =========================================================
   TOAST
========================================================= */

function showToast(message) {

    toast.textContent = message;

    toast.classList.add("show");

    setTimeout(() => {

        toast.classList.remove("show");

    }, 2200);

}


/* =========================================================
   CATEGORIES
========================================================= */

function renderCategories() {

    categoriesGrid.innerHTML = "";

    CATEGORIES.forEach(category => {

        const div = document.createElement("div");

        div.className = "category";

        div.dataset.category = category.id;

        div.innerHTML = `

            <div class="category-icon">

                <i class="fa-solid ${category.icon}"></i>

            </div>

            <h4>${category.name}</h4>

            <small>
                Explore collection
            </small>

        `;

        div.addEventListener("click", () => {

            document.querySelectorAll(".category")
                .forEach(c => c.classList.remove("active"));

            div.classList.add("active");

            filterProducts(category.id);

            document.getElementById("products")
                .scrollIntoView({
                    behavior: "smooth"
                });

        });

        categoriesGrid.appendChild(div);

    });

}


/* =========================================================
   PRODUCTS
========================================================= */

function renderProducts(products) {

    productsGrid.innerHTML = "";

    document.getElementById("emptyState").style.display =
        products.length ? "none" : "block";


    products.forEach(product => {

        const isWishlisted =
            wishlist.includes(product.id);


        const card = document.createElement("article");

        card.className = "product";

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
                    `<span class="product-badge ${product.badge === "Sale" ? "sale" : ""}">
                        ${product.badge}
                    </span>`
                    :
                    ""
                }

                <button
                    class="wishlist ${isWishlisted ? "active" : ""}"
                    data-wishlist="${product.id}"
                    aria-label="Add to wishlist"
                >

                    <i class="${isWishlisted ? "fa-solid" : "fa-regular"} fa-heart"></i>

                </button>

            </div>


            <div class="product-info">

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
                        (${product.reviews})
                    </span>

                </div>


                <div class="product-bottom">

                    <div class="price">

                        $${product.price.toLocaleString()}

                        ${
                            product.oldPrice
                            ?
                            `<span class="old-price">
                                $${product.oldPrice.toLocaleString()}
                            </span>`
                            :
                            ""
                        }

                    </div>


                    <button
                        class="add-cart"
                        data-cart="${product.id}"
                        aria-label="Add to cart"
                    >

                        <i class="fa-solid fa-cart-plus"></i>

                    </button>

                </div>

            </div>

        `;


        productsGrid.appendChild(card);

    });


    document
        .querySelectorAll("[data-cart]")
        .forEach(button => {

            button.addEventListener("click", () => {

                addToCart(Number(button.dataset.cart));

            });

        });


    document
        .querySelectorAll("[data-wishlist]")
        .forEach(button => {

            button.addEventListener("click", () => {

                toggleWishlist(Number(button.dataset.wishlist));

            });

        });

}


/* =========================================================
   FILTER
========================================================= */

function filterProducts(query) {

    const q = query.trim().toLowerCase();


    if (!q) {

        renderProducts(PRODUCTS);

        return;

    }


    const filtered = PRODUCTS.filter(product => {

        return (

            product.title.toLowerCase().includes(q) ||

            product.category.toLowerCase().includes(q)

        );

    });


    renderProducts(filtered);

}


/* =========================================================
   SEARCH
========================================================= */

searchInput.addEventListener("input", event => {

    filterProducts(event.target.value);

});


/* =========================================================
   CART
========================================================= */

function addToCart(productId) {

    const product =
        PRODUCTS.find(p => p.id === productId);

    if (!product) return;


    const existing =
        cart.find(item => item.id === productId);


    if (existing) {

        existing.quantity++;

    } else {

        cart.push({
            ...product,
            quantity: 1
        });

    }


    updateCart();

    showToast(`${product.title} added to cart`);

}


function updateCart() {

    const totalItems =
        cart.reduce(
            (total, item) => total + item.quantity,
            0
        );


    cartCount.textContent = totalItems;


    renderCart();

}


function renderCart() {

    cartItems.innerHTML = "";


    if (!cart.length) {

        cartItems.innerHTML = `

            <div class="empty-cart">

                <i class="fa-solid fa-bag-shopping"></i>

                <h3>Your cart is empty</h3>

                <p>
                    Add some products to get started.
                </p>

            </div>

        `;

        cartTotal.textContent = "$0";

        return;

    }


    cart.forEach(item => {

        const div = document.createElement("div");

        div.className = "cart-item";


        div.innerHTML = `

            <img
                src="${item.image}"
                alt="${item.title}"
            >

            <div class="cart-item-info">

                <div class="cart-item-title">
                    ${item.title}
                </div>

                <div class="cart-item-price">
                    $${(item.price * item.quantity).toLocaleString()}
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
                        class="remove-item"
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
                sum + item.price * item.quantity,
            0
        );


    cartTotal.textContent =
        "$" + total.toLocaleString();

}


function changeQuantity(id, amount) {

    const item =
        cart.find(product => product.id === id);

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
        cart.filter(item => item.id !== id);

    updateCart();

    showToast("Product removed from cart");

}


/* =========================================================
   WISHLIST
========================================================= */

function toggleWishlist(id) {

    const product =
        PRODUCTS.find(p => p.id === id);


    if (wishlist.includes(id)) {

        wishlist =
            wishlist.filter(item => item !== id);

        showToast("Removed from wishlist");

    } else {

        wishlist.push(id);

        showToast(`${product.title} added to wishlist`);

    }


    wishlistCount.textContent =
        wishlist.length;


    renderProducts(
        getCurrentProducts()
    );

}


function getCurrentProducts() {

    const query =
        searchInput.value.trim().toLowerCase();


    if (!query) return PRODUCTS;


    return PRODUCTS.filter(product =>

        product.title.toLowerCase().includes(query) ||

        product.category.toLowerCase().includes(query)

    );

}


/* =========================================================
   CART DRAWER
========================================================= */

document.getElementById("cartBtn")
    .addEventListener("click", () => {

        cartOverlay.classList.add("active");

        document.body.classList.add("no-scroll");

    });


document.getElementById("closeCart")
    .addEventListener("click", closeCart);


cartOverlay.addEventListener("click", event => {

    if (event.target === cartOverlay) {

        closeCart();

    }

});


function closeCart() {

    cartOverlay.classList.remove("active");

    document.body.classList.remove("no-scroll");

}


/* =========================================================
   DEAL
========================================================= */

document.getElementById("buyDeal")
    .addEventListener("click", () => {

        const deal = {

            id: 999,

            title: "MacBook Air M2",

            price: 999,

            image:
                "https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85",

            quantity: 1

        };


        const existing =
            cart.find(item => item.id === 999);


        if (existing) {

            existing.quantity++;

        } else {

            cart.push(deal);

        }


        updateCart();

        showToast("MacBook Air M2 added to cart");

    });


/* =========================================================
   COUNTDOWN
========================================================= */

const dealEnd =
    new Date().getTime() + 24 * 60 * 60 * 1000;


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
            (difference /
            (1000 * 60 * 60)) % 24
        );


    const minutes =
        Math.floor(
            (difference /
            (1000 * 60)) % 60
        );


    const seconds =
        Math.floor(
            (difference /
            1000) % 60
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


setInterval(updateTimer, 1000);

updateTimer();


/* =========================================================
   MOBILE MENU
========================================================= */

document.getElementById("mobileMenuBtn")
    .addEventListener("click", () => {

        document
            .getElementById("mobileNav")
            .classList.toggle("active");

    });


document
    .querySelectorAll(".mobile-nav a")
    .forEach(link => {

        link.addEventListener("click", () => {

            document
                .getElementById("mobileNav")
                .classList.remove("active");

        });

    });


/* =========================================================
   HERO BUTTONS
========================================================= */

document.getElementById("shopNow")
    .addEventListener("click", () => {

        document
            .getElementById("products")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


document.getElementById("heroDeals")
    .addEventListener("click", () => {

        document
            .getElementById("deals")
            .scrollIntoView({
                behavior: "smooth"
            });

    });


/* =========================================================
   NEWSLETTER
========================================================= */

document.getElementById("newsletterForm")
    .addEventListener("submit", event => {

        event.preventDefault();

        const email =
            document
                .getElementById("newsletterEmail")
                .value
                .trim();


        if (!email) return;


        showToast("Thanks! You're subscribed.");

        event.target.reset();

    });


/* =========================================================
   CHECKOUT
========================================================= */

document.getElementById("checkoutBtn")
    .addEventListener("click", () => {

        if (!cart.length) {

            showToast("Your cart is empty");

            return;

        }


        showToast(
            "Checkout is ready — demo mode"
        );

    });


/* =========================================================
   YEAR
========================================================= */

document.getElementById("year")
    .textContent =
    new Date().getFullYear();


/* =========================================================
   INITIALIZE
========================================================= */

renderCategories();

renderProducts(PRODUCTS);

updateCart();

</script>

</body>
</html>
```
