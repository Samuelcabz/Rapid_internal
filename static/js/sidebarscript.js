document.addEventListener("DOMContentLoaded", function() {
    const sidebar = document.getElementById("sidebar");
    const toggleSidebarBtn = document.getElementById("sidebarCollapse");
    const sidebarState = localStorage.getItem("sidebarState");
    if (sidebarState === "open") {
        sidebar.classList.add("active");
    }

    toggleSidebarBtn.addEventListener("click", function() {
        sidebar.classList.toggle("active");
        closeAllSubmenus();

        const newSidebarState = sidebar.classList.contains("active") ? "open" : "closed";
        localStorage.setItem("sidebarState", newSidebarState);
    });

    document.querySelectorAll('.list-unstyled.components .dropdown-toggle').forEach(function(item) {
        item.addEventListener('click', function() {
            sidebar.classList.add("active");
            localStorage.setItem("sidebarState", "open");
        });
    });

    function closeAllSubmenus() {
        document.querySelectorAll("#sidebar .collapse.show").forEach(function(element) {
            element.classList.remove("show");
        });
    }

    if (!sidebar.innerHTML.trim()) {
        fetchSidebarContent();
    }
});

function fetchSidebarContent() {
    fetch("sidebar.html")
        .then(response => response.text())
        .then(data => {
            const sidebar = document.getElementById("sidebar");
            sidebar.innerHTML = data;
        });
}
