document.addEventListener("DOMContentLoaded", function() {
    const toggleSidebarBtn = document.getElementById("sidebarCollapse");
    const sidebarState = localStorage.getItem("sidebarState");

    if (sidebarState === "open") {
        document.getElementById("sidebar").classList.add("active");
    }

    toggleSidebarBtn.addEventListener("click", function() {
        const sidebar = document.getElementById("sidebar");
        sidebar.classList.toggle("active");
        closeAllSubmenus();

        const newSidebarState = sidebar.classList.contains("active") ? "open" : "closed";
        localStorage.setItem("sidebarState", newSidebarState);
    });

    document.querySelectorAll('.list-unstyled.components .dropdown-toggle').forEach(function(item) {
        item.addEventListener('click', function() {
            const sidebar = document.getElementById("sidebar");
            sidebar.classList.add("active");
            localStorage.setItem("sidebarState", "open");
        });
    });

    function closeAllSubmenus() {
        document.querySelectorAll("#sidebar .collapse.show").forEach(function(element) {
            element.classList.remove("show");
        });
    }
});