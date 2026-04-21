<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>Elysian | Modern E‑commerce</title>
  <!-- Google Fonts + Font Awesome -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #fafbfc;
      color: #1a2c3e;
      scroll-behavior: smooth;
    }

    /* container & utility */
    .container {
      max-width: 1280px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header & nav */
    .top-bar {
      background: #ffffff;
      border-bottom: 1px solid #eef2f6;
      position: sticky;
      top: 0;
      z-index: 100;
      backdrop-filter: blur(2px);
      background: rgba(255, 255, 255, 0.96);
    }

    .navbar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 16px 0;
      flex-wrap: wrap;
    }

    .logo h1 {
      font-size: 1.8rem;
      font-weight: 700;
      background: linear-gradient(135deg, #2c7da0, #3b9e6d);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
      letter-spacing: -0.3px;
    }
    .logo span {
      font-size: 0.85rem;
      font-weight: 400;
      color: #5f6c7a;
      display: block;
      letter-spacing: 0;
    }

    .nav-links {
      display: flex;
      gap: 32px;
      align-items: center;
    }
    .nav-links a {
      text-decoration: none;
      font-weight: 500;
      color: #2c3e4e;
      transition: 0.2s;
    }
    .nav-links a:hover {
      color: #2c7da0;
    }
    .cart-icon {
      position: relative;
      font-size: 1.4rem;
    }
    .cart-count {
      position: absolute;
      top: -10px;
      right: -14px;
      background: #e67e22;
      color: white;
      font-size: 0.7rem;
      font-weight: bold;
      border-radius: 30px;
      padding: 2px 6px;
      min-width: 18px;
      text-align: center;
    }
    .mobile-toggle {
      display: none;
      font-size: 1.8rem;
      cursor: pointer;
      background: none;
      border: none;
      color: #2c3e4e;
    }
    .mobile-menu {
      display: none;
      background: white;
      padding: 20px;
      border-top: 1px solid #eef2f6;
      flex-direction: column;
      gap: 16px;
    }
    .mobile-menu a {
      text-decoration: none;
      font-weight: 500;
      color: #1e2f3a;
    }

    /* hero */
    .hero {
      background: linear-gradient(120deg, #eef5f0 0%, #e0f0e8 100%);
      border-radius: 32px;
      margin: 32px 0 40px;
      padding: 56px 48px;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
      gap: 30px;
    }
    .hero-content h2 {
      font-size: 2.8rem;
      font-weight: 700;
      line-height: 1.2;
      color: #1e4a5f;
    }
    .hero-content p {
      font-size: 1.1rem;
      margin: 20px 0 28px;
      color: #2c5a6e;
    }
    .btn-group {
      display: flex;
      gap: 16px;
      flex-wrap: wrap;
    }
    .btn-primary, .btn-secondary {
      padding: 12px 28px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      border: none;
      font-family: inherit;
    }
    .btn-primary {
      background: #1f6e43;
      color: white;
      box-shadow: 0 4px 8px rgba(0,0,0,0.05);
    }
    .btn-primary:hover {
      background: #0f5536;
      transform: translateY(-2px);
    }
    .btn-secondary {
      background: white;
      color: #1f6e43;
      border: 1px solid #cbdde6;
    }
    .btn-secondary:hover {
      background: #f9fdfb;
      border-color: #1f6e43;
    }
    .hero-badge {
      background: rgba(255,255,240,0.7);
      padding: 16px 24px;
      border-radius: 60px;
      backdrop-filter: blur(4px);
    }

    /* category grid */
    .section-title {
      font-size: 1.8rem;
      font-weight: 600;
      margin: 48px 0 24px;
      position: relative;
      display: inline-block;
    }
    .section-title:after {
      content: '';
      position: absolute;
      bottom: -8px;
      left: 0;
      width: 60px;
      height: 3px;
      background: #2c7da0;
      border-radius: 3px;
    }
    .category-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
      gap: 20px;
      margin-bottom: 40px;
    }
    .category-card {
      background: white;
      border-radius: 28px;
      padding: 20px 12px;
      text-align: center;
      cursor: pointer;
      transition: all 0.2s ease;
      box-shadow: 0 5px 12px rgba(0,0,0,0.03);
      border: 1px solid #eef2f0;
    }
    .category-card i {
      font-size: 2.3rem;
      color: #2c7da0;
      margin-bottom: 12px;
    }
    .category-card span {
      font-weight: 500;
    }
    .category-card.active {
      border: 1px solid #2c7da0;
      background: #f3fafd;
      box-shadow: 0 8px 18px rgba(44,125,160,0.1);
    }

    /* product grid */
    .product-grid {
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
      gap: 28px;
      margin: 32px 0 40px;
    }
    .product-card {
      background: white;
      border-radius: 28px;
      overflow: hidden;
      transition: 0.2s;
      box-shadow: 0 8px 20px rgba(0,0,0,0.03);
      border: 1px solid #edf2f0;
    }
    .product-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 20px 30px -12px rgba(0,0,0,0.12);
    }
    .product-img {
      height: 200px;
      background: #eef3f0;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 3.5rem;
      color: #2b6e4e;
    }
    .product-info {
      padding: 20px 18px 22px;
    }
    .product-title {
      font-weight: 700;
      font-size: 1.2rem;
    }
    .product-price {
      color: #1f6e43;
      font-weight: 700;
      margin: 10px 0;
      font-size: 1.2rem;
    }
    .add-to-cart {
      background: #f0f6f2;
      border: none;
      width: 100%;
      padding: 10px;
      border-radius: 40px;
      font-weight: 600;
      cursor: pointer;
      transition: 0.2s;
      font-family: inherit;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-to-cart:hover {
      background: #e0ece4;
      color: #1f6e43;
    }

    /* deal banner */
    .deal-section {
      background: linear-gradient(115deg, #1e2f3a 0%, #143125 100%);
      border-radius: 38px;
      padding: 48px 32px;
      margin: 40px 0;
      color: white;
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      align-items: center;
    }
    .deal-text h3 {
      font-size: 1.9rem;
      font-weight: 700;
    }
    .countdown {
      display: flex;
      gap: 18px;
      margin: 20px 0;
    }
    .time-block {
      background: rgba(255,255,255,0.12);
      backdrop-filter: blur(4px);
      border-radius: 28px;
      padding: 12px 18px;
      text-align: center;
      min-width: 70px;
    }
    .time-block span:first-child {
      font-size: 2rem;
      font-weight: 800;
    }
    .deal-btn {
      background: #f4b942;
      border: none;
      padding: 12px 32px;
      border-radius: 44px;
      font-weight: 700;
      font-size: 1rem;
      cursor: pointer;
    }

    /* newsletter */
    .newsletter {
      background: white;
      border-radius: 38px;
      padding: 48px 32px;
      text-align: center;
      margin: 48px 0;
      box-shadow: 0 8px 26px rgba(0,0,0,0.02);
      border: 1px solid #e4ece8;
    }
    .newsletter-form {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      gap: 12px;
      margin-top: 24px;
    }
    .newsletter-form input {
      padding: 14px 22px;
      border-radius: 60px;
      border: 1px solid #cbdad2;
      width: 280px;
      font-family: inherit;
    }
    .newsletter-form button {
      background: #2c7da0;
      border: none;
      padding: 14px 28px;
      border-radius: 60px;
      color: white;
      font-weight: 600;
      cursor: pointer;
    }
    #newsletterMsg {
      margin-top: 16px;
      font-size: 0.9rem;
    }

    footer {
      background: #111f27;
      color: #bfd7e2;
      padding: 32px 0;
      margin-top: 40px;
      text-align: center;
      border-radius: 32px 32px 0 0;
    }

    @media (max-width: 780px) {
      .nav-links { display: none; }
      .mobile-toggle { display: block; }
      .hero { flex-direction: column; text-align: center; padding: 32px; }
      .btn-group { justify-content: center; }
      .hero-content h2 { font-size: 2rem; }
    }
  </style>
</head>
<body>
<div class="top-bar">
  <div class="container">
    <div class="navbar">
      <div class="logo">
        <h1>Elysian<span>market</span></h1>
      </div>
      <div class="nav-links">
        <a href="#">Home</a>
        <a href="#categories">Shop</a>
        <a href="#deals">Deals</a>
        <a href="#contact">Contact</a>
        <div class="cart-icon">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCountDisplay">0</span>
        </div>
      </div>
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
    </div>
    <div class="mobile-menu" id="mobileMenu">
      <a href="#">Home</a>
      <a href="#categories">Shop</a>
      <a href="#deals">Deals</a>
      <a href="#contact">Contact</a>
      <div><i class="fas fa-shopping-bag"></i> Cart (<span id="mobileCartCount">0</span>)</div>
    </div>
  </div>
</div>

<main class="container">
  <!-- Hero -->
  <div class="hero">
    <div class="hero-content">
      <h2>Beyond ordinary<br>essentials</h2>
      <p>Fresh design, smart prices — sustainable style for everyday life.</p>
      <div class="btn-group">
        <button class="btn-primary" id="shopNow">Shop now →</button>
        <button class="btn-secondary" id="exploreDeals">Explore deals</button>
      </div>
    </div>
    <div class="hero-badge">
      <i class="fas fa-truck-fast"></i> Free shipping on orders $50+
    </div>
  </div>

  <!-- Categories section -->
  <div id="categories">
    <div class="section-title">Shop by category</div>
    <div class="category-grid" id="categoryGrid"></div>
  </div>

  <!-- Products section -->
  <div class="section-title" id="prod-title">Featured for you</div>
  <div class="product-grid" id="productGrid"></div>

  <!-- Countdown Deal -->
  <div id="deals" class="deal-section">
    <div class="deal-text">
      <h3><i class="fas fa-bolt"></i> Flash sale: 24h special</h3>
      <p>Grab the eco‑bundle at 35% off — while stock lasts.</p>
      <div class="countdown">
        <div class="time-block"><span id="dealDays">0</span><br>Days</div>
        <div class="time-block"><span id="dealHours">00</span><br>Hrs</div>
        <div class="time-block"><span id="dealMinutes">00</span><br>Min</div>
        <div class="time-block"><span id="dealSeconds">00</span><br>Sec</div>
      </div>
    </div>
    <button class="deal-btn" id="buyDeal"><i class="fas fa-gift"></i> Add deal to cart</button>
  </div>

  <!-- Newsletter -->
  <div class="newsletter" id="contact">
    <h3>Join the edit</h3>
    <p>Get 10% off first order + insider access</p>
    <form id="newsletterForm" class="newsletter-form">
      <input type="email" id="newsletterEmail" placeholder="your@email.com" required>
      <button type="submit">Subscribe →</button>
    </form>
    <div id="newsletterMsg"></div>
  </div>
</main>

<footer>
  <div class="container">
    <p>© <span id="year"></span> Elysian — curated with purpose.</p>
    <p style="margin-top: 10px; font-size: 0.8rem;"><i class="fas fa-leaf"></i> Inspired by nature, driven by design</p>
  </div>
</footer>

<script>
  // ---------- PRODUCT DATABASE ----------
  const PRODUCTS = [
    { id: 1, name: "Bamboo Utensil Set", price: 24.99, category: "home", icon: "fa-utensils", imgIcon: "fa-seedling" },
    { id: 2, name: "Ceramic Pour-Over", price: 39.00, category: "home", icon: "fa-mug-hot" },
    { id: 3, name: "Organic Cotton Tee", price: 29.95, category: "clothing", icon: "fa-tshirt" },
    { id: 4, name: "Linen Blend Shirt", price: 49.90, category: "clothing", icon: "fa-shirt" },
    { id: 5, name: "Smart Watch Band", price: 34.50, category: "accessories", icon: "fa-clock" },
    { id: 6, name: "Reusable Tote", price: 18.00, category: "accessories", icon: "fa-bag-shopping" },
    { id: 7, name: "Desk Lamp Walnut", price: 59.99, category: "home", icon: "fa-lamp" },
    { id: 8, name: "Leather Cardholder", price: 22.00, category: "accessories", icon: "fa-wallet" }
  ];

  const CATEGORIES = [
    { id: "all", name: "All", icon: "fa-grid-2" },
    { id: "home", name: "Home & Living", icon: "fa-couch" },
    { id: "clothing", name: "Clothing", icon: "fa-vest" },
    { id: "accessories", name: "Accessories", icon: "fa-gem" }
  ];

  let cartCount = 0;
  let activeCategory = "all";

  // helper to update cart UI
  function updateCartCount() {
    const cartSpan = document.getElementById('cartCountDisplay');
    const mobileCartSpan = document.getElementById('mobileCartCount');
    if (cartSpan) cartSpan.innerText = cartCount;
    if (mobileCartSpan) mobileCartSpan.innerText = cartCount;
  }

  // render categories
  function renderCategories() {
    const container = document.getElementById('categoryGrid');
    if (!container) return;
    container.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const card = document.createElement('div');
      card.className = `category-card ${activeCategory === cat.id ? 'active' : ''}`;
      card.setAttribute('data-cat', cat.id);
      card.innerHTML = `<i class="fas ${cat.icon}"></i><span>${cat.name}</span>`;
      card.addEventListener('click', () => {
        activeCategory = cat.id;
        renderCategories();
        renderProducts(PRODUCTS);
      });
      container.appendChild(card);
    });
  }

  // product rendering
  function renderProducts(productsArray) {
    const grid = document.getElementById('productGrid');
    if (!grid) return;
    let filtered = productsArray;
    if (activeCategory !== 'all') {
      filtered = productsArray.filter(p => p.category === activeCategory);
    }
    if (filtered.length === 0) {
      grid.innerHTML = `<div style="grid-column:1/-1; text-align:center; padding:40px;">✨ No products in this category, explore others ✨</div>`;
      return;
    }
    grid.innerHTML = filtered.map(prod => `
      <div class="product-card">
        <div class="product-img">
          <i class="fas ${prod.icon || 'fa-box-open'}" style="font-size: 3rem;"></i>
        </div>
        <div class="product-info">
          <div class="product-title">${prod.name}</div>
          <div class="product-price">$${prod.price.toFixed(2)}</div>
          <button class="add-to-cart" data-id="${prod.id}" data-name="${prod.name}" data-price="${prod.price}">
            <i class="fas fa-cart-plus"></i> Add to cart
          </button>
        </div>
      </div>
    `).join('');

    // attach event listeners to each add-to-cart button
    document.querySelectorAll('.add-to-cart').forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        cartCount += 1;
        updateCartCount();
        // simple micro feedback
        const originalText = btn.innerHTML;
        btn.innerHTML = '<i class="fas fa-check"></i> Added!';
        setTimeout(() => { btn.innerHTML = originalText; }, 900);
      });
    });
  }

  // ----- MOBILE MENU LOGIC (fixed + pretty)-----
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  if (mobileToggle && mobileMenu) {
    mobileToggle.addEventListener('click', () => {
      const isHidden = mobileMenu.style.display === 'none' || !mobileMenu.style.display;
      mobileMenu.style.display = isHidden ? 'flex' : 'none';
    });
    // optional close on link click
    mobileMenu.querySelectorAll('a').forEach(link => {
      link.addEventListener('click', () => mobileMenu.style.display = 'none');
    });
  }

  // simple catMenuBtn alert replacement (but we integrated click on categories)
  const catMenuBtn = document.getElementById('catMenuBtn');
  if (catMenuBtn) {
    catMenuBtn.addEventListener('click', (e) => {
      e.preventDefault();
      alert('Use category tiles to filter — enjoy browsing!');
    });
  }

  // Newsletter subscribe
  const newsletterForm = document.getElementById('newsletterForm');
  if (newsletterForm) {
    newsletterForm.addEventListener('submit', (e) => {
      e.preventDefault();
      const email = document.getElementById('newsletterEmail').value.trim();
      const msg = document.getElementById('newsletterMsg');
      if (!email || !email.includes('@')) {
        msg.style.display = 'block';
        msg.textContent = 'Please enter a valid email address.';
        msg.style.color = '#e07c6c';
        return;
      }
      msg.style.display = 'block';
      msg.style.color = '#2c7da0';
      msg.innerHTML = '🎉 Thanks! You are subscribed. Enjoy 10% off.';
      document.getElementById('newsletterEmail').value = '';
      setTimeout(() => msg.style.display = 'none', 3200);
    });
  }

  // Countdown timer
  (function setupDealTimer() {
    const now = new Date();
    const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) {
        document.getElementById('dealDays').textContent = 0;
        document.getElementById('dealHours').textContent = '00';
        document.getElementById('dealMinutes').textContent = '00';
        document.getElementById('dealSeconds').textContent = '00';
        clearInterval(timer);
        return;
      }
      const days = Math.floor(diff / (24 * 3600 * 1000));
      const hours = Math.floor((diff % (24 * 3600 * 1000)) / (3600 * 1000));
      const mins = Math.floor((diff % (3600 * 1000)) / (60 * 1000));
      const secs = Math.floor((diff % (60 * 1000)) / 1000);
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2, '0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2, '0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2, '0');
    }
    tick();
    const timer = setInterval(tick, 1000);
  })();

  // UI bindings for shop now / explore deals / buy deal
  const shopBtn = document.getElementById('shopNow');
  if (shopBtn) {
    shopBtn.addEventListener('click', () => {
      const prodSection = document.getElementById('prod-title');
      if (prodSection) prodSection.scrollIntoView({ behavior: 'smooth', block: 'start' });
    });
  }
  const exploreBtn = document.getElementById('exploreDeals');
  if (exploreBtn) {
    exploreBtn.addEventListener('click', () => {
      const dealsSection = document.getElementById('deals');
      if (dealsSection) dealsSection.scrollIntoView({ behavior: 'smooth' });
    });
  }
  const buyDealBtn = document.getElementById('buyDeal');
  if (buyDealBtn) {
    buyDealBtn.addEventListener('click', () => {
      cartCount += 1;
      updateCartCount();
      const toastMsg = document.createElement('div');
      toastMsg.innerText = '🔥 Deal added to cart!';
      toastMsg.style.position = 'fixed';
      toastMsg.style.bottom = '20px';
      toastMsg.style.left = '50%';
      toastMsg.style.transform = 'translateX(-50%)';
      toastMsg.style.background = '#1f6e43';
      toastMsg.style.color = 'white';
      toastMsg.style.padding = '12px 24px';
      toastMsg.style.borderRadius = '60px';
      toastMsg.style.zIndex = '999';
      toastMsg.style.fontWeight = '500';
      document.body.appendChild(toastMsg);
      setTimeout(() => toastMsg.remove(), 1800);
    });
  }

  // additional quick cart update on page load (ensure categories display active)
  function init() {
    renderCategories();
    renderProducts(PRODUCTS);
    updateCartCount();
    const yearSpan = document.getElementById('year');
    if (yearSpan) yearSpan.innerText = new Date().getFullYear();
    // close mobile menu if resizing
    window.addEventListener('resize', () => {
      if (window.innerWidth > 780 && mobileMenu) mobileMenu.style.display = 'none';
    });
  }
  init();
</script>
</body>
</html>
