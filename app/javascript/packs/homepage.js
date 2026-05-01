(() => {
    function incrementingCounter(limit, element, intervalTime = 30) {
        let count = 0;

        const interval = setInterval(() => {
            count++;
            element.textContent = count;

            if (count >= limit) {
                clearInterval(interval);
            }
        }, intervalTime);
    }

    document.querySelectorAll('.counting-element').forEach(element => {
        const limit = parseInt(element.getAttribute('data-counting-limit'), 10);
        const intervalTime = parseInt(element.getAttribute('data-interval-time'), 10) || 30;
        incrementingCounter(limit, element, intervalTime);
    });

})();

