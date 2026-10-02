/* ============ Переключатель темы ============ */
(function () {
  const root = document.documentElement;
  const toggle = document.getElementById('themeToggle');
  const STORAGE_KEY = 'profiservice-theme';

  function getInitialTheme() {
    const saved = localStorage.getItem(STORAGE_KEY);
    if (saved === 'dark' || saved === 'light') return saved;
    if (window.matchMedia && window.matchMedia('(prefers-color-scheme: dark)').matches) {
      return 'dark';
    }
    return 'light';
  }

  function applyTheme(theme) {
    root.setAttribute('data-theme', theme);
    toggle.setAttribute('aria-pressed', String(theme === 'dark'));
    toggle.title = theme === 'dark' ? 'Включить светлую тему' : 'Включить тёмную тему';
  }

  applyTheme(getInitialTheme());

  toggle.addEventListener('click', function () {
    const next = root.getAttribute('data-theme') === 'dark' ? 'light' : 'dark';
    applyTheme(next);
    localStorage.setItem(STORAGE_KEY, next);
  });

  if (window.matchMedia) {
    window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', function (e) {
      if (!localStorage.getItem(STORAGE_KEY)) {
        applyTheme(e.matches ? 'dark' : 'light');
      }
    });
  }
})();

/* ============ Мобильное меню ============ */
(function () {
  const burger = document.getElementById('burger');
  const nav = document.getElementById('mainNav');

  burger.addEventListener('click', function () {
    const open = nav.classList.toggle('open');
    burger.classList.toggle('open', open);
    burger.setAttribute('aria-expanded', String(open));
    burger.setAttribute('aria-label', open ? 'Закрыть меню' : 'Открыть меню');
  });

  nav.querySelectorAll('a').forEach(function (link) {
    link.addEventListener('click', function () {
      nav.classList.remove('open');
      burger.classList.remove('open');
      burger.setAttribute('aria-expanded', 'false');
    });
  });
})();

/* ============ Год в подвале ============ */
document.getElementById('year').textContent = new Date().getFullYear();
