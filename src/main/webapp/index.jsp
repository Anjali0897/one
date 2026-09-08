<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop — Find things faster</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700;800&family=Fraunces:ital,wght@0,500;0,600;1,500&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
/* ============ TOKENS ============ */
:root{
  --paper:#FAF8F3;
  --surface:#FFFFFF;
  --line:#E7E2D6;
  --ink:#1E2A2E;
  --ink-soft:#5B6B6E;
  --teal:#1F7A6C;
  --teal-deep:#155C51;
  --teal-wash:#E7F2EE;
  --amber:#F2A93B;
  --coral:#E85D4E;
  --radius-lg:20px;
  --radius-md:12px;
  --radius-sm:8px;
  --shadow:0 8px 24px rgba(30,42,46,.08);
}
body.dark{
  --paper:#131A1B;
  --surface:#1B2325;
  --line:#2B3538;
  --ink:#F3F1EA;
  --ink-soft:#9CA9AB;
  --teal:#4FBFA8;
  --teal-deep:#3FA48F;
  --teal-wash:#1D2E2B;
}

*{margin:0;padding:0;box-sizing:border-box;}
html{scroll-behavior:smooth;}
body{
  font-family:'Plus Jakarta Sans',sans-serif;
  background:var(--paper);
  color:var(--ink);
  line-height:1.5;
  transition:background .25s, color .25s;
}
body.no-scroll{overflow:hidden;}
button,input,select{font-family:inherit;}
button{cursor:pointer;}
a{text-decoration:none;color:inherit;}
img{display:block;max-width:100%;}
:focus-visible{outline:2px solid var(--teal);outline-offset:2px;}

.wrap{width:min(100% - 32px, 1280px);margin:auto;}

h1,h2,h3{font-family:'Fraunces',serif;font-weight:600;letter-spacing:-.01em;}

/* ============ HEADER ============ */
header{position:sticky;top:0;z-index:100;background:var(--surface);border-bottom:1px solid var(--line);}
.header-bar{min-height:72px;display:flex;align-items:center;gap:20px;}
.logo{font-family:'Fraunces',serif;font-size:23px;font-weight:600;white-space:nowrap;}
.logo em{font-style:normal;color:var(--teal);}

.header-search{flex:1;max-width:460px;position:relative;}
.header-search input{
  width:100%;height:46px;border:1.5px solid var(--line);border-radius:100px;
  padding:0 46px 0 18px;background:var(--paper);color:var(--ink);outline:none;font-size:14px;
  transition:.2s;
}
.header-search input:focus{border-color:var(--teal);background:var(--surface);}
.header-search i{position:absolute;right:17px;top:50%;transform:translateY(-50%);color:var(--ink-soft);}

.header-actions{display:flex;align-items:center;gap:6px;margin-left:auto;}
.pill-btn{
  height:44px;padding:0 16px;border:1.5px solid var(--line);border-radius:100px;
  background:var(--surface);color:var(--ink);display:flex;align-items:center;gap:8px;font-weight:600;font-size:13px;
  position:relative;transition:.2s;
}
.pill-btn:hover{border-color:var(--teal);color:var(--teal);}
.pill-btn .badge{
  position:absolute;top:-6px;right:-6px;min-width:19px;height:19px;padding:0 4px;border-radius:100px;
  background:var(--coral);color:#fff;font-size:10px;font-weight:800;display:grid;place-items:center;
}
.icon-only{width:44px;padding:0;justify-content:center;}
.menu-toggle{display:none;}

/* ============ HERO ============ */
.hero{padding:56px 0 40px;}
.hero-inner{display:flex;align-items:center;gap:56px;}
.hero-copy{flex:1;max-width:520px;}
.hero-kicker{color:var(--teal-deep);font-weight:700;font-size:14px;margin-bottom:12px;}
.hero h1{font-size:clamp(34px,4.4vw,52px);line-height:1.08;margin-bottom:16px;}
.hero p{color:var(--ink-soft);font-size:15.5px;max-width:440px;margin-bottom:26px;}

.big-search{display:flex;gap:10px;max-width:440px;}
.big-search input{
  flex:1;height:54px;border-radius:100px;border:1.5px solid var(--line);padding:0 20px;
  background:var(--surface);color:var(--ink);font-size:14.5px;outline:none;
}
.big-search input:focus{border-color:var(--teal);}
.big-search button{
  height:54px;padding:0 24px;border:0;border-radius:100px;background:var(--ink);color:var(--paper);
  font-weight:700;font-size:14px;white-space:nowrap;
}

.hero-visual{
  flex:1;max-width:420px;aspect-ratio:1/.85;border-radius:28px;overflow:hidden;position:relative;
  background:url("https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=900&q=85") center/cover;
}
.hero-visual::after{content:"";position:absolute;inset:0;background:linear-gradient(180deg,transparent 55%,rgba(21,30,32,.55));}
.hero-tag-float{
  position:absolute;left:18px;bottom:18px;background:rgba(255,255,255,.94);color:var(--ink);
  border-radius:14px;padding:12px 15px;display:flex;align-items:center;gap:10px;box-shadow:var(--shadow);
}
.hero-tag-float i{color:var(--teal);}
.hero-tag-float strong{display:block;font-size:13px;}
.hero-tag-float span{color:var(--ink-soft);font-size:11px;}

/* ============ TRUST STRIP ============ */
.trust-strip{border-top:1px solid var(--line);border-bottom:1px solid var(--line);background:var(--surface);}
.trust-inner{display:flex;justify-content:space-between;padding:20px 0;flex-wrap:wrap;gap:18px;}
.trust-item{display:flex;align-items:center;gap:10px;font-size:13px;color:var(--ink-soft);font-weight:600;}
.trust-item i{color:var(--teal);font-size:15px;}

/* ============ MAIN LAYOUT ============ */
.shop{padding:44px 0 0;}
.shop-inner{display:grid;grid-template-columns:250px 1fr;gap:36px;align-items:start;}

/* --- sidebar --- */
.sidebar{position:sticky;top:92px;display:flex;flex-direction:column;gap:26px;}
.filter-group h4{font-size:13px;font-weight:800;margin-bottom:12px;}
.filter-list{display:flex;flex-direction:column;gap:2px;}
.filter-row{
  display:flex;align-items:center;justify-content:space-between;padding:9px 10px;border-radius:var(--radius-sm);
  font-size:13.5px;color:var(--ink-soft);font-weight:600;transition:.15s;
}
.filter-row:hover{background:var(--teal-wash);color:var(--ink);}
.filter-row.active{background:var(--teal-wash);color:var(--teal-deep);}
.filter-row .n{font-size:11px;color:var(--ink-soft);font-weight:600;}
.filter-row.active .n{color:var(--teal-deep);}

.price-range{display:flex;flex-direction:column;gap:10px;}
.price-range input[type=range]{width:100%;accent-color:var(--teal);}
.price-range-labels{display:flex;justify-content:space-between;font-size:12px;color:var(--ink-soft);font-weight:600;}

.rating-filter{display:flex;flex-direction:column;gap:6px;}
.rating-opt{display:flex;align-items:center;gap:8px;font-size:13px;color:var(--ink-soft);cursor:pointer;padding:5px 0;}
.rating-opt input{accent-color:var(--teal);}
.rating-opt .stars-mini{color:var(--amber);}

.reset-filters{
  border:1.5px solid var(--line);background:transparent;color:var(--ink-soft);border-radius:var(--radius-sm);
  padding:10px;font-size:12.5px;font-weight:700;text-align:center;
}
.reset-filters:hover{border-color:var(--coral);color:var(--coral);}

/* --- product area --- */
.shop-header{display:flex;align-items:center;justify-content:space-between;margin-bottom:20px;gap:14px;flex-wrap:wrap;}
.shop-header h2{font-size:24px;}
.result-line{color:var(--ink-soft);font-size:13px;margin-top:3px;}

.shop-tools{display:flex;align-items:center;gap:10px;}
.sort-select{
  border:1.5px solid var(--line);background:var(--surface);color:var(--ink);border-radius:100px;
  padding:9px 14px;font-size:12.5px;font-weight:600;outline:none;
}
.mobile-filter-btn{display:none;}

.product-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:18px;}

.product-card{
  background:var(--surface);border:1px solid var(--line);border-radius:var(--radius-lg);overflow:hidden;
  transition:.2s;display:flex;flex-direction:column;
}
.product-card:hover{box-shadow:var(--shadow);border-color:var(--teal);}
.product-image{height:210px;position:relative;background:var(--teal-wash);}
.product-image img{width:100%;height:100%;object-fit:cover;transition:.4s;}
.product-card:hover .product-image img{transform:scale(1.05);}

.tag{
  position:absolute;top:12px;left:12px;padding:5px 10px;border-radius:100px;font-size:10.5px;font-weight:700;
  background:var(--teal);color:#fff;
}
.tag.sale{background:var(--coral);}

.fav-btn{
  position:absolute;top:10px;right:10px;width:36px;height:36px;border:0;border-radius:100px;
  background:rgba(255,255,255,.92);color:var(--ink-soft);box-shadow:0 3px 10px rgba(0,0,0,.1);
}
.fav-btn.active{color:var(--coral);}

.product-body{padding:16px;display:flex;flex-direction:column;gap:8px;flex:1;}
.product-cat{font-size:11px;color:var(--ink-soft);font-weight:700;text-transform:capitalize;}
.product-name{font-size:14.5px;font-weight:700;line-height:1.3;}
.product-stars{display:flex;align-items:center;gap:6px;font-size:11.5px;color:var(--ink-soft);}
.product-stars .stars-mini{color:var(--amber);}

.product-foot{margin-top:auto;display:flex;align-items:center;justify-content:space-between;gap:10px;padding-top:6px;}
.product-price{font-size:17px;font-weight:800;}
.product-price del{font-size:11px;color:var(--ink-soft);font-weight:500;margin-left:5px;}

.add-btn{
  border:0;border-radius:100px;height:38px;padding:0 16px;background:var(--ink);color:var(--paper);
  font-size:12.5px;font-weight:700;display:flex;align-items:center;gap:7px;transition:.2s;
}
.add-btn:hover{background:var(--teal-deep);}

.stepper{display:none;align-items:center;gap:0;border:1.5px solid var(--line);border-radius:100px;overflow:hidden;}
.stepper.show{display:flex;}
.stepper button{width:32px;height:34px;border:0;background:var(--paper);color:var(--ink);font-weight:700;}
.stepper span{min-width:26px;text-align:center;font-size:13px;font-weight:700;}

.empty-state{display:none;text-align:center;padding:70px 20px;background:var(--surface);border:1px dashed var(--line);border-radius:var(--radius-lg);}
.empty-state i{font-size:36px;color:var(--ink-soft);margin-bottom:14px;}
.empty-state h3{font-size:18px;margin-bottom:6px;}
.empty-state p{color:var(--ink-soft);font-size:13px;margin-bottom:18px;}
.empty-state button{border:0;background:var(--teal);color:#fff;border-radius:100px;padding:11px 20px;font-weight:700;font-size:13px;}

/* ============ DEAL ============ */
.deal-band{margin-top:64px;border-radius:26px;overflow:hidden;background:var(--ink);color:var(--paper);display:grid;grid-template-columns:1fr 1fr;}
.deal-media{background:url("https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1000&q=85") center/cover;min-height:340px;}
.deal-copy{padding:48px;display:flex;flex-direction:column;justify-content:center;gap:16px;}
.deal-copy .kicker{color:var(--amber);font-weight:700;font-size:13px;}
.deal-copy h2{font-size:32px;color:var(--paper);}
.deal-copy p{color:#C7D2CE;font-size:13.5px;max-width:400px;}
.count-row{display:flex;gap:10px;}
.count-box{min-width:58px;padding:10px 8px;background:rgba(255,255,255,.08);border-radius:10px;text-align:center;}
.count-box strong{display:block;font-size:19px;}
.count-box span{font-size:9px;color:#9FB0AC;}
.deal-price{font-size:26px;font-weight:800;}
.deal-price del{color:#9FB0AC;font-size:14px;margin-left:8px;}
.deal-btn{align-self:flex-start;border:0;background:var(--teal);color:#fff;border-radius:100px;padding:14px 24px;font-weight:700;font-size:13.5px;display:flex;gap:9px;align-items:center;}

/* ============ REVIEWS ============ */
.reviews-sect{padding:70px 0 0;}
.section-title{margin-bottom:26px;}
.section-title h2{font-size:26px;margin-bottom:6px;}
.section-title p{color:var(--ink-soft);font-size:13.5px;}
.review-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px;}
.review-card{background:var(--surface);border:1px solid var(--line);border-radius:var(--radius-lg);padding:22px;}
.review-card .stars-mini{color:var(--amber);margin-bottom:12px;display:block;}
.review-card p{color:var(--ink-soft);font-size:13px;margin-bottom:18px;}
.who{display:flex;align-items:center;gap:10px;}
.who img{width:38px;height:38px;border-radius:100px;object-fit:cover;}
.who strong{display:block;font-size:12.5px;}
.who span{color:var(--ink-soft);font-size:10.5px;}

/* ============ NEWSLETTER ============ */
.news{margin-top:70px;background:var(--teal-wash);border-radius:26px;padding:50px 30px;text-align:center;}
.news h2{font-size:26px;margin-bottom:8px;}
.news p{color:var(--ink-soft);font-size:13.5px;margin-bottom:22px;}
.news-form{max-width:440px;margin:auto;display:flex;gap:8px;}
.news-form input{flex:1;height:50px;border-radius:100px;border:1.5px solid var(--line);padding:0 18px;background:var(--surface);outline:none;font-size:13.5px;}
.news-form button{height:50px;padding:0 22px;border:0;border-radius:100px;background:var(--ink);color:var(--paper);font-weight:700;font-size:13px;}

/* ============ FOOTER ============ */
footer{margin-top:70px;padding:50px 0 24px;border-top:1px solid var(--line);}
.foot-grid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:40px;}
.foot-logo{font-family:'Fraunces',serif;font-size:20px;font-weight:600;margin-bottom:12px;}
.foot-logo em{font-style:normal;color:var(--teal);}
.foot-about{color:var(--ink-soft);font-size:12.5px;max-width:320px;margin-bottom:16px;}
.foot-socials{display:flex;gap:8px;}
.foot-socials a{width:34px;height:34px;border-radius:100px;background:var(--teal-wash);color:var(--teal-deep);display:grid;place-items:center;}
.foot-col h4{font-size:13px;margin-bottom:14px;}
.foot-col a{display:block;color:var(--ink-soft);font-size:12.5px;margin-bottom:10px;}
.foot-col a:hover{color:var(--teal);}
.copyright{text-align:center;border-top:1px solid var(--line);margin-top:36px;padding-top:18px;color:var(--ink-soft);font-size:11px;}

/* ============ CART DRAWER ============ */
.overlay{position:fixed;inset:0;z-index:500;background:rgba(20,28,30,.5);opacity:0;visibility:hidden;transition:.25s;}
.overlay.active{opacity:1;visibility:visible;}
.cart-panel{
  position:absolute;right:0;top:0;height:100%;width:min(420px,100%);background:var(--surface);
  transform:translateX(100%);transition:.3s;display:flex;flex-direction:column;
}
.overlay.active .cart-panel{transform:translateX(0);}
.cart-head{padding:22px;border-bottom:1px solid var(--line);display:flex;justify-content:space-between;align-items:center;}
.cart-head h3{font-size:19px;}
.cart-close{width:38px;height:38px;border:0;border-radius:100px;background:var(--paper);color:var(--ink);}
.cart-list{flex:1;overflow-y:auto;padding:18px 22px;}
.cart-row{display:flex;gap:12px;padding:14px 0;border-bottom:1px solid var(--line);}
.cart-row img{width:64px;height:64px;border-radius:12px;object-fit:cover;}
.cart-info{flex:1;}
.cart-name{font-size:12.5px;font-weight:700;margin-bottom:4px;}
.cart-price{font-size:12.5px;font-weight:800;color:var(--teal-deep);}
.cart-qty{display:flex;align-items:center;gap:8px;margin-top:8px;}
.cart-qty button{width:26px;height:26px;border:1.5px solid var(--line);background:var(--paper);border-radius:100px;font-weight:700;}
.cart-remove{margin-left:auto;border:0;background:transparent;color:var(--coral);font-size:11px;font-weight:700;}
.cart-foot{padding:22px;border-top:1px solid var(--line);}
.cart-total-row{display:flex;justify-content:space-between;font-size:17px;font-weight:800;margin-bottom:16px;}
.checkout-btn{width:100%;border:0;background:var(--teal);color:#fff;border-radius:100px;padding:15px;font-weight:700;font-size:14px;display:flex;justify-content:center;align-items:center;gap:8px;}
.empty-cart{padding:70px 20px;text-align:center;color:var(--ink-soft);}
.empty-cart i{font-size:40px;margin-bottom:14px;}

/* ============ TOAST ============ */
.toast{
  position:fixed;left:50%;bottom:24px;transform:translate(-50%,100px);z-index:1000;
  padding:14px 22px;border-radius:100px;background:var(--ink);color:var(--paper);
  font-size:13px;font-weight:600;box-shadow:var(--shadow);opacity:0;transition:.3s;display:flex;align-items:center;gap:10px;
}
.toast.show{transform:translate(-50%,0);opacity:1;}
.toast i{color:var(--teal);}

/* ============ MOBILE FILTER SHEET ============ */
.filter-sheet-overlay{position:fixed;inset:0;background:rgba(20,28,30,.5);z-index:600;opacity:0;visibility:hidden;transition:.25s;}
.filter-sheet-overlay.active{opacity:1;visibility:visible;}
.filter-sheet{position:absolute;left:0;right:0;bottom:0;background:var(--surface);border-radius:22px 22px 0 0;max-height:82vh;overflow-y:auto;transform:translateY(100%);transition:.3s;padding:22px;}
.filter-sheet-overlay.active .filter-sheet{transform:translateY(0);}
.filter-sheet-head{display:flex;justify-content:space-between;align-items:center;margin-bottom:18px;}
.filter-sheet-head h3{font-size:18px;}
.filter-sheet-apply{width:100%;border:0;background:var(--teal);color:#fff;border-radius:100px;padding:15px;font-weight:700;margin-top:10px;}

/* ============ RESPONSIVE ============ */
@media(max-width:980px){
  .shop-inner{grid-template-columns:1fr;}
  .sidebar{display:none;}
  .mobile-filter-btn{display:flex;}
  .review-grid{grid-template-columns:1fr;}
  .foot-grid{grid-template-columns:1fr 1fr;}
  .hero-inner{flex-direction:column;}
  .hero-visual{max-width:100%;width:100%;}
}
@media(max-width:760px){
  .header-search{display:none;}
  .menu-toggle{display:flex;}
  .trust-strip{display:none;}
  .product-grid{grid-template-columns:repeat(2,1fr);gap:12px;}
  .product-image{height:150px;}
  .product-body{padding:12px;}
  .product-name{font-size:12.5px;}
  .deal-band{grid-template-columns:1fr;}
  .deal-media{min-height:220px;}
  .deal-copy{padding:28px 22px;}
  .foot-grid{grid-template-columns:1fr;gap:26px;}
  .hero{padding:30px 0 24px;}
  .big-search{max-width:100%;}
}
@media(max-width:480px){
  .product-grid{grid-template-columns:1fr 1fr;}
  .shop-header{flex-direction:column;align-items:flex-start;}
}
</style>
</head>
<body>

<header>
  <div class="wrap header-bar">
    <button class="icon-only pill-btn menu-toggle" id="menuToggle" aria-label="Menu"><i class="fa-solid fa-bars"></i></button>
    <a href="#" class="logo">Nexus<em>Shop</em></a>

    <div class="header-search">
      <input type="search" id="topSearch" placeholder="Search for anything...">
      <i class="fa-solid fa-magnifying-glass"></i>
    </div>

    <div class="header-actions">
      <button class="icon-only pill-btn" id="themeBtn" aria-label="Toggle theme"><i class="fa-solid fa-moon"></i></button>
      <button class="pill-btn" id="wishlistBtn"><i class="fa-regular fa-heart"></i><span class="badge" id="wishlistCount">0</span></button>
      <button class="pill-btn" id="cartBtn"><i class="fa-solid fa-bag-shopping"></i> Cart <span class="badge" id="cartCount">0</span></button>
    </div>
  </div>
</header>

<main>

  <section class="hero">
    <div class="wrap hero-inner">
      <div class="hero-copy">
        <div class="hero-kicker">Fewer clicks, less clutter</div>
        <h1>Shopping that gets out of your way.</h1>
        <p>Filter by what matters, see the price up front, and check out in seconds. No surprises.</p>
        <div class="big-search">
          <input type="search" id="heroSearch" placeholder="Try 'wireless headphones'">
          <button id="heroSearchBtn">Search</button>
        </div>
      </div>
      <div class="hero-visual">
        <div class="hero-tag-float">
          <i class="fa-solid fa-truck-fast"></i>
          <div><strong>Arrives in 2 days</strong><span>on most orders</span></div>
        </div>
      </div>
    </div>
  </section>

  <div class="trust-strip">
    <div class="wrap trust-inner">
      <div class="trust-item"><i class="fa-solid fa-truck-fast"></i> Free shipping over $50</div>
      <div class="trust-item"><i class="fa-solid fa-rotate-left"></i> 30-day easy returns</div>
      <div class="trust-item"><i class="fa-solid fa-lock"></i> Secure checkout</div>
      <div class="trust-item"><i class="fa-solid fa-headset"></i> Real humans, 24/7</div>
    </div>
  </div>

  <section class="shop wrap" id="products">
    <div class="shop-inner">

      <!-- SIDEBAR FILTERS -->
      <aside class="sidebar">
        <div class="filter-group">
          <h4>Category</h4>
          <div class="filter-list" id="categoryList"></div>
        </div>

        <div class="filter-group">
          <h4>Price</h4>
          <div class="price-range">
            <input type="range" id="priceRange" min="0" max="2500" value="2500">
            <div class="price-range-labels"><span>$0</span><span id="priceLabel">Up to $2,500</span></div>
          </div>
        </div>

        <div class="filter-group">
          <h4>Rating</h4>
          <div class="rating-filter" id="ratingFilter">
            <label class="rating-opt"><input type="radio" name="rating" value="0" checked> Any rating</label>
            <label class="rating-opt"><input type="radio" name="rating" value="4"> <span class="stars-mini">★★★★</span>+ &amp; up</label>
            <label class="rating-opt"><input type="radio" name="rating" value="5"> <span class="stars-mini">★★★★★</span> only</label>
          </div>
        </div>

        <button class="reset-filters" id="resetFiltersBtn">Clear all filters</button>
      </aside>

      <!-- PRODUCTS -->
      <div>
        <div class="shop-header">
          <div>
            <h2>Popular right now</h2>
            <div class="result-line" id="resultLine">Showing 8 products</div>
          </div>
          <div class="shop-tools">
            <button class="pill-btn mobile-filter-btn" id="openFilterSheet"><i class="fa-solid fa-sliders"></i> Filters</button>
            <select class="sort-select" id="sortSelect">
              <option value="default">Sort: Featured</option>
              <option value="price-low">Price: Low to High</option>
              <option value="price-high">Price: High to Low</option>
              <option value="rating">Highest Rated</option>
            </select>
          </div>
        </div>

        <div class="product-grid" id="productGrid"></div>

        <div class="empty-state" id="emptyState">
          <i class="fa-solid fa-magnifying-glass"></i>
          <h3>Nothing matches those filters</h3>
          <p>Try widening your price range or picking a different category.</p>
          <button id="emptyReset">Clear filters</button>
        </div>
      </div>

    </div>
  </section>

  <section class="wrap">
    <div class="deal-band" id="deals">
      <div class="deal-media"></div>
      <div class="deal-copy">
        <div class="kicker">Deal of the day</div>
        <h2>MacBook Air M2</h2>
        <p>Powerful performance in a design light enough to forget it's there. This price won't last.</p>
        <div class="count-row">
          <div class="count-box"><strong id="days">01</strong><span>DAYS</span></div>
          <div class="count-box"><strong id="hours">00</strong><span>HOURS</span></div>
          <div class="count-box"><strong id="minutes">00</strong><span>MINS</span></div>
          <div class="count-box"><strong id="seconds">00</strong><span>SECS</span></div>
        </div>
        <div class="deal-price">$999 <del>$1,199</del></div>
        <button class="deal-btn" id="dealBtn">Add to cart <i class="fa-solid fa-arrow-right"></i></button>
      </div>
    </div>
  </section>

  <section class="reviews-sect wrap" id="reviews">
    <div class="section-title">
      <h2>What shoppers say</h2>
      <p>Real feedback from people who've actually checked out.</p>
    </div>
    <div class="review-grid">
      <div class="review-card">
        <span class="stars-mini">★★★★★</span>
        <p>"The website is really easy to use. I found exactly what I wanted and delivery was faster than expected."</p>
        <div class="who"><img src="https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=100&q=80" alt="Ava Martin"><div><strong>Ava Martin</strong><span>Verified Customer</span></div></div>
      </div>
      <div class="review-card">
        <span class="stars-mini">★★★★★</span>
        <p>"Great product selection and excellent prices. Support was also quick and genuinely helpful."</p>
        <div class="who"><img src="https://images.unsplash.com/photo-1500648767791-00dcc994a43e?auto=format&fit=crop&w=100&q=80" alt="Michael Lee"><div><strong>Michael Lee</strong><span>Verified Customer</span></div></div>
      </div>
      <div class="review-card">
        <span class="stars-mini">★★★★☆</span>
        <p>"I love how simple the shopping experience is. Everything is organized and easy to find."</p>
        <div class="who"><img src="https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=100&q=80" alt="Emma Wilson"><div><strong>Emma Wilson</strong><span>Verified Customer</span></div></div>
      </div>
    </div>
  </section>

  <section class="wrap">
    <div class="news">
      <h2>Get the best deals first.</h2>
      <p>One email a week. New arrivals, real discounts, no spam.</p>
      <form class="news-form" id="newsletterForm">
        <input type="email" id="emailInput" placeholder="Your email address" required>
        <button class="pill-btn" style="background:var(--ink);color:var(--paper);border:0;">Subscribe</button>
      </form>
    </div>
  </section>

</main>

<footer>
  <div class="wrap">
    <div class="foot-grid">
      <div>
        <div class="foot-logo">Nexus<em>Shop</em></div>
        <p class="foot-about">A modern online shopping experience designed to make discovering your favorite products simple, fast and enjoyable.</p>
        <div class="foot-socials">
          <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
          <a href="#"><i class="fa-brands fa-instagram"></i></a>
          <a href="#"><i class="fa-brands fa-x-twitter"></i></a>
          <a href="#"><i class="fa-brands fa-youtube"></i></a>
        </div>
      </div>
      <div class="foot-col"><h4>Shop</h4>
        <a href="#products">Products</a><a href="#products">Categories</a><a href="#deals">Deals</a><a href="#products">New Arrivals</a>
      </div>
      <div class="foot-col"><h4>Support</h4>
        <a href="#">Help Center</a><a href="#">Shipping</a><a href="#">Returns</a><a href="#">Contact Us</a>
      </div>
      <div class="foot-col"><h4>Company</h4>
        <a href="#">About Us</a><a href="#">Careers</a><a href="#">Privacy</a><a href="#">Terms</a>
      </div>
    </div>
    <div class="copyright">© <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<div class="overlay" id="cartOverlay">
  <div class="cart-panel">
    <div class="cart-head"><h3>Your cart</h3><button class="cart-close" id="closeCart"><i class="fa-solid fa-xmark"></i></button></div>
    <div class="cart-list" id="cartList"></div>
    <div class="cart-foot">
      <div class="cart-total-row"><span>Total</span><span id="cartTotal">$0</span></div>
      <button class="checkout-btn" id="checkoutBtn">Checkout <i class="fa-solid fa-arrow-right"></i></button>
    </div>
  </div>
</div>

<div class="filter-sheet-overlay" id="filterSheetOverlay">
  <div class="filter-sheet">
    <div class="filter-sheet-head"><h3>Filters</h3><button class="cart-close" id="closeFilterSheet"><i class="fa-solid fa-xmark"></i></button></div>
    <div class="filter-group"><h4>Category</h4><div class="filter-list" id="categoryListMobile"></div></div>
    <div class="filter-group" style="margin-top:18px;"><h4>Rating</h4><div class="rating-filter" id="ratingFilterMobile"></div></div>
    <button class="filter-sheet-apply" id="applyFilterSheet">Show results</button>
  </div>
</div>

<div class="toast" id="toast"><i class="fa-solid fa-circle-check"></i><span id="toastText"></span></div>

<script>
/* ============ DATA ============ */
const CATEGORIES=[
  {id:"phones",name:"Smartphones"},
  {id:"laptops",name:"Laptops"},
  {id:"clothing",name:"Clothing"},
  {id:"gadgets",name:"Gadgets"},
  {id:"footwear",name:"Footwear"},
  {id:"accessories",name:"Accessories"}
];

const PRODUCTS=[
  {id:1,title:"iPhone 14 Pro Max",price:1099,oldPrice:1199,rating:5,reviews:128,badge:"New",category:"phones",image:"https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=700&q=85"},
  {id:2,title:'MacBook Pro 14"',price:1999,rating:4,reviews:86,category:"laptops",image:"https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=700&q=85"},
  {id:3,title:"Apple Watch Series 8",price:349,oldPrice:399,rating:5,reviews:214,badge:"Sale",category:"accessories",image:"https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=700&q=85"},
  {id:4,title:"Nike Air Max 270",price:150,rating:4,reviews:53,category:"footwear",image:"https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=700&q=85"},
  {id:5,title:"Sony A7 IV Camera",price:2499,rating:5,reviews:42,category:"gadgets",image:"https://images.unsplash.com/photo-1516035069371-29a1b244cc32?auto=format&fit=crop&w=700&q=85"},
  {id:6,title:"Premium Perfume",price:120,rating:5,reviews:189,category:"accessories",image:"https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=700&q=85"},
  {id:7,title:"Travel Backpack",price:79,oldPrice:99,rating:4,reviews:67,badge:"Sale",category:"accessories",image:"https://images.unsplash.com/photo-1553062407-98eeb64c6a62?auto=format&fit=crop&w=700&q=85"},
  {id:8,title:"Sony WH-1000XM5",price:399,rating:5,reviews:156,category:"gadgets",image:"https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=700&q=85"}
];

/* ============ STATE ============ */
let cart=[];
let wishlist=[];
let currentCategory="all";
let maxPrice=2500;
let minRating=0;
let searchTerm="";

/* ============ ELEMENTS ============ */
const productGrid=document.getElementById("productGrid");
const categoryList=document.getElementById("categoryList");
const categoryListMobile=document.getElementById("categoryListMobile");
const topSearch=document.getElementById("topSearch");
const heroSearch=document.getElementById("heroSearch");
const sortSelect=document.getElementById("sortSelect");
const resultLine=document.getElementById("resultLine");
const emptyState=document.getElementById("emptyState");
const priceRange=document.getElementById("priceRange");
const priceLabel=document.getElementById("priceLabel");
const cartList=document.getElementById("cartList");
const cartTotal=document.getElementById("cartTotal");
const cartCount=document.getElementById("cartCount");
const wishlistCount=document.getElementById("wishlistCount");
const cartOverlay=document.getElementById("cartOverlay");
const filterSheetOverlay=document.getElementById("filterSheetOverlay");
const toast=document.getElementById("toast");
const toastText=document.getElementById("toastText");

/* ============ TOAST ============ */
function showToast(msg){
  toastText.textContent=msg;
  toast.classList.add("show");
  setTimeout(()=>toast.classList.remove("show"),2200);
}

/* ============ CATEGORY LISTS ============ */
function buildCategoryList(container){
  container.innerHTML="";
  const allRow=document.createElement("div");
  allRow.className="filter-row"+(currentCategory==="all"?" active":"");
  allRow.innerHTML=`<span>All products</span><span class="n">${PRODUCTS.length}</span>`;
  allRow.addEventListener("click",()=>{currentCategory="all";syncCategoryUI();renderProducts();});
  container.appendChild(allRow);

  CATEGORIES.forEach(cat=>{
    const count=PRODUCTS.filter(p=>p.category===cat.id).length;
    const row=document.createElement("div");
    row.className="filter-row"+(currentCategory===cat.id?" active":"");
    row.innerHTML=`<span>${cat.name}</span><span class="n">${count}</span>`;
    row.addEventListener("click",()=>{currentCategory=cat.id;syncCategoryUI();renderProducts();});
    container.appendChild(row);
  });
}
function syncCategoryUI(){
  buildCategoryList(categoryList);
  buildCategoryList(categoryListMobile);
}

/* ============ RATING FILTER MIRROR (mobile) ============ */
function buildRatingMobile(){
  const c=document.getElementById("ratingFilterMobile");
  c.innerHTML=`
    <label class="rating-opt"><input type="radio" name="ratingM" value="0" ${minRating===0?"checked":""}> Any rating</label>
    <label class="rating-opt"><input type="radio" name="ratingM" value="4" ${minRating===4?"checked":""}> <span class="stars-mini">★★★★</span>+ &amp; up</label>
    <label class="rating-opt"><input type="radio" name="ratingM" value="5" ${minRating===5?"checked":""}> <span class="stars-mini">★★★★★</span> only</label>
  `;
  c.querySelectorAll("input").forEach(inp=>{
    inp.addEventListener("change",e=>{minRating=Number(e.target.value);});
  });
}

document.querySelectorAll('input[name="rating"]').forEach(inp=>{
  inp.addEventListener("change",e=>{minRating=Number(e.target.value);renderProducts();});
});

priceRange.addEventListener("input",()=>{
  maxPrice=Number(priceRange.value);
  priceLabel.textContent = maxPrice>=2500 ? "Up to $2,500" : "Up to $"+maxPrice.toLocaleString();
  renderProducts();
});

/* ============ FILTER + SORT ============ */
function getFilteredProducts(){
  let list=PRODUCTS.filter(p=>{
    const matchesSearch = p.title.toLowerCase().includes(searchTerm) || p.category.toLowerCase().includes(searchTerm);
    const matchesCategory = currentCategory==="all" || p.category===currentCategory;
    const matchesPrice = p.price<=maxPrice;
    const matchesRating = p.rating>=minRating;
    return matchesSearch && matchesCategory && matchesPrice && matchesRating;
  });

  const sort=sortSelect.value;
  if(sort==="price-low") list.sort((a,b)=>a.price-b.price);
  if(sort==="price-high") list.sort((a,b)=>b.price-a.price);
  if(sort==="rating") list.sort((a,b)=>b.rating-a.rating);
  return list;
}

/* ============ RENDER PRODUCTS ============ */
function renderProducts(){
  const list=getFilteredProducts();
  productGrid.innerHTML="";
  resultLine.textContent=`Showing ${list.length} product${list.length!==1?"s":""}`;

  if(!list.length){
    emptyState.style.display="block";
    return;
  }
  emptyState.style.display="none";

  list.forEach(p=>{
    const isWishlisted=wishlist.includes(p.id);
    const inCart=cart.find(c=>c.id===p.id);

    const card=document.createElement("article");
    card.className="product-card";
    card.innerHTML=`
      <div class="product-image">
        <img src="${p.image}" alt="${p.title}" loading="lazy">
        ${p.badge?`<span class="tag ${p.badge==="Sale"?"sale":""}">${p.badge}</span>`:""}
        <button class="fav-btn ${isWishlisted?"active":""}" data-wish="${p.id}" aria-label="Save to wishlist">
          <i class="${isWishlisted?"fa-solid":"fa-regular"} fa-heart"></i>
        </button>
      </div>
      <div class="product-body">
        <div class="product-cat">${p.category}</div>
        <div class="product-name">${p.title}</div>
        <div class="product-stars"><span class="stars-mini">${"★".repeat(p.rating)}${"☆".repeat(5-p.rating)}</span> ${p.rating}.0 · ${p.reviews}</div>
        <div class="product-foot">
          <div class="product-price">$${p.price.toLocaleString()}${p.oldPrice?`<del>$${p.oldPrice.toLocaleString()}</del>`:""}</div>
          <button class="add-btn" data-add="${p.id}" style="${inCart?'display:none':''}"><i class="fa-solid fa-plus"></i> Add</button>
          <div class="stepper ${inCart?'show':''}" data-stepper="${p.id}">
            <button data-dec="${p.id}">−</button>
            <span>${inCart?inCart.quantity:0}</span>
            <button data-inc="${p.id}">+</button>
          </div>
        </div>
      </div>
    `;
    productGrid.appendChild(card);
  });

  productGrid.querySelectorAll("[data-add]").forEach(btn=>{
    btn.addEventListener("click",()=>addToCart(Number(btn.dataset.add)));
  });
  productGrid.querySelectorAll("[data-wish]").forEach(btn=>{
    btn.addEventListener("click",()=>toggleWishlist(Number(btn.dataset.wish)));
  });
  productGrid.querySelectorAll("[data-inc]").forEach(btn=>{
    btn.addEventListener("click",()=>changeQuantity(Number(btn.dataset.inc),1));
  });
  productGrid.querySelectorAll("[data-dec]").forEach(btn=>{
    btn.addEventListener("click",()=>changeQuantity(Number(btn.dataset.dec),-1));
  });
}

/* ============ SEARCH / SORT EVENTS ============ */
function handleSearch(val){
  searchTerm=val.trim().toLowerCase();
  topSearch.value=val;
  heroSearch.value=val;
  renderProducts();
  document.getElementById("products").scrollIntoView({behavior:"smooth"});
}
topSearch.addEventListener("input",e=>{searchTerm=e.target.value.trim().toLowerCase();heroSearch.value=e.target.value;renderProducts();});
heroSearch.addEventListener("input",e=>{searchTerm=e.target.value.trim().toLowerCase();topSearch.value=e.target.value;renderProducts();});
document.getElementById("heroSearchBtn").addEventListener("click",()=>handleSearch(heroSearch.value));
sortSelect.addEventListener("change",renderProducts);

/* ============ CART ============ */
function addToCart(id){
  const product=PRODUCTS.find(p=>p.id===id) || (id===999 ? dealDealObj() : null);
  if(!product) return;
  const existing=cart.find(i=>i.id===id);
  if(existing){existing.quantity++;} else {cart.push({...product,quantity:1});}
  updateCart();
  renderProducts();
  showToast(`${product.title} added to cart`);
}
function dealDealObj(){
  return {id:999,title:"MacBook Air M2",price:999,image:"https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=700&q=85"};
}
function changeQuantity(id,amount){
  const item=cart.find(i=>i.id===id);
  if(!item) return;
  item.quantity+=amount;
  if(item.quantity<=0){removeFromCart(id);return;}
  updateCart();
  renderProducts();
}
function removeFromCart(id){
  cart=cart.filter(i=>i.id!==id);
  updateCart();
  renderProducts();
  showToast("Removed from cart");
}
function updateCart(){
  const totalItems=cart.reduce((s,i)=>s+i.quantity,0);
  cartCount.textContent=totalItems;
  renderCartPanel();
}
function renderCartPanel(){
  cartList.innerHTML="";
  if(!cart.length){
    cartList.innerHTML=`<div class="empty-cart"><i class="fa-solid fa-bag-shopping"></i><h3>Your cart is empty</h3><p>Add something you like to get started.</p></div>`;
    cartTotal.textContent="$0";
    return;
  }
  cart.forEach(item=>{
    const row=document.createElement("div");
    row.className="cart-row";
    row.innerHTML=`
      <img src="${item.image}" alt="${item.title}">
      <div class="cart-info">
        <div class="cart-name">${item.title}</div>
        <div class="cart-price">$${(item.price*item.quantity).toLocaleString()}</div>
        <div class="cart-qty">
          <button onclick="changeQuantity(${item.id},-1)">−</button>
          <span>${item.quantity}</span>
          <button onclick="changeQuantity(${item.id},1)">+</button>
          <button class="cart-remove" onclick="removeFromCart(${item.id})">Remove</button>
        </div>
      </div>
    `;
    cartList.appendChild(row);
  });
  const total=cart.reduce((s,i)=>s+i.price*i.quantity,0);
  cartTotal.textContent="$"+total.toLocaleString();
}

/* ============ WISHLIST ============ */
function toggleWishlist(id){
  const product=PRODUCTS.find(p=>p.id===id);
  if(wishlist.includes(id)){
    wishlist=wishlist.filter(i=>i!==id);
    showToast("Removed from wishlist");
  }else{
    wishlist.push(id);
    showToast(`${product.title} added to wishlist`);
  }
  wishlistCount.textContent=wishlist.length;
  renderProducts();
}
document.getElementById("wishlistBtn").addEventListener("click",()=>{
  if(!wishlist.length){showToast("Your wishlist is empty");return;}
  currentCategory="all";searchTerm="";minRating=0;maxPrice=2500;
  priceRange.value=2500;priceLabel.textContent="Up to $2,500";
  syncCategoryUI();
  const items=PRODUCTS.filter(p=>wishlist.includes(p.id));
  productGrid.innerHTML="";
  emptyState.style.display="none";
  resultLine.textContent=`Wishlist · ${items.length} product${items.length!==1?"s":""}`;
  items.forEach(p=>{
    const inCart=cart.find(c=>c.id===p.id);
    const card=document.createElement("article");
    card.className="product-card";
    card.innerHTML=`
      <div class="product-image">
        <img src="${p.image}" alt="${p.title}">
        <button class="fav-btn active" data-wish="${p.id}"><i class="fa-solid fa-heart"></i></button>
      </div>
      <div class="product-body">
        <div class="product-cat">${p.category}</div>
        <div class="product-name">${p.title}</div>
        <div class="product-stars"><span class="stars-mini">${"★".repeat(p.rating)}</span> ${p.reviews} reviews</div>
        <div class="product-foot">
          <div class="product-price">$${p.price.toLocaleString()}</div>
          <button class="add-btn" data-add="${p.id}"><i class="fa-solid fa-cart-plus"></i> Add</button>
        </div>
      </div>
    `;
    productGrid.appendChild(card);
  });
  productGrid.querySelectorAll("[data-add]").forEach(btn=>btn.addEventListener("click",()=>addToCart(Number(btn.dataset.add))));
  productGrid.querySelectorAll("[data-wish]").forEach(btn=>btn.addEventListener("click",()=>toggleWishlist(Number(btn.dataset.wish))));
  document.getElementById("products").scrollIntoView({behavior:"smooth"});
});

/* ============ CART DRAWER ============ */
document.getElementById("cartBtn").addEventListener("click",()=>{cartOverlay.classList.add("active");document.body.classList.add("no-scroll");});
document.getElementById("closeCart").addEventListener("click",closeCartPanel);
cartOverlay.addEventListener("click",e=>{if(e.target===cartOverlay)closeCartPanel();});
function closeCartPanel(){cartOverlay.classList.remove("active");document.body.classList.remove("no-scroll");}

/* ============ MOBILE FILTER SHEET ============ */
document.getElementById("openFilterSheet").addEventListener("click",()=>{
  buildRatingMobile();
  filterSheetOverlay.classList.add("active");
  document.body.classList.add("no-scroll");
});
document.getElementById("closeFilterSheet").addEventListener("click",closeFilterSheet);
document.getElementById("applyFilterSheet").addEventListener("click",()=>{closeFilterSheet();renderProducts();});
filterSheetOverlay.addEventListener("click",e=>{if(e.target===filterSheetOverlay)closeFilterSheet();});
function closeFilterSheet(){filterSheetOverlay.classList.remove("active");document.body.classList.remove("no-scroll");}
document.getElementById("menuToggle").addEventListener("click",()=>{
  buildRatingMobile();
  filterSheetOverlay.classList.add("active");
  document.body.classList.add("no-scroll");
});

/* ============ RESET FILTERS ============ */
function resetFilters(){
  currentCategory="all";searchTerm="";minRating=0;maxPrice=2500;
  topSearch.value="";heroSearch.value="";
  priceRange.value=2500;priceLabel.textContent="Up to $2,500";
  sortSelect.value="default";
  syncCategoryUI();
  renderProducts();
}
document.getElementById("resetFiltersBtn").addEventListener("click",resetFilters);
document.getElementById("emptyReset").addEventListener("click",resetFilters);

/* ============ DEAL ============ */
document.getElementById("dealBtn").addEventListener("click",()=>addToCart(999));

/* ============ COUNTDOWN ============ */
const dealEnd=new Date().getTime()+24*60*60*1000;
function updateTimer(){
  const diff=dealEnd-new Date().getTime();
  if(diff<=0) return;
  document.getElementById("days").textContent=String(Math.floor(diff/86400000)).padStart(2,"0");
  document.getElementById("hours").textContent=String(Math.floor(diff/3600000%24)).padStart(2,"0");
  document.getElementById("minutes").textContent=String(Math.floor(diff/60000%60)).padStart(2,"0");
  document.getElementById("seconds").textContent=String(Math.floor(diff/1000%60)).padStart(2,"0");
}
setInterval(updateTimer,1000);
updateTimer();

/* ============ DARK MODE ============ */
document.getElementById("themeBtn").addEventListener("click",()=>{
  document.body.classList.toggle("dark");
  const icon=document.querySelector("#themeBtn i");
  const isDark=document.body.classList.contains("dark");
  icon.className=isDark?"fa-solid fa-sun":"fa-solid fa-moon";
  showToast(isDark?"Dark mode on":"Light mode on");
});

/* ============ NEWSLETTER ============ */
document.getElementById("newsletterForm").addEventListener("submit",e=>{
  e.preventDefault();
  const email=document.getElementById("emailInput").value.trim();
  if(!email) return;
  showToast("You're subscribed!");
  e.target.reset();
});

/* ============ CHECKOUT ============ */
document.getElementById("checkoutBtn").addEventListener("click",()=>{
  if(!cart.length){showToast("Your cart is empty");return;}
  showToast("Checkout is ready — demo mode");
});

/* ============ YEAR ============ */
document.getElementById("year").textContent=new Date().getFullYear();

/* ============ INIT ============ */
syncCategoryUI();
renderProducts();
updateCart();
</script>

</body>
</html>
