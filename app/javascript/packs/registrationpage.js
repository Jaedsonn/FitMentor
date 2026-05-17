(() => {
    const tabs = document.querySelectorAll('[data-tab-target]');
    if (!tabs.length) return;

    const panels = document.querySelectorAll('[data-tab-panel]');

    const activate = (targetId) => {
        tabs.forEach(tab => {
            tab.setAttribute('aria-selected', String(tab.dataset.tabTarget === targetId));
        });
        panels.forEach(panel => {
            panel.classList.toggle('hidden', panel.id !== targetId);
        });
    };

    tabs.forEach(tab => {
        tab.addEventListener('click', () => activate(tab.dataset.tabTarget));
    });
})();
