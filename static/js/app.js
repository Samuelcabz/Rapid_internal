document.addEventListener("DOMContentLoaded", function() {
    var sidebarState = sessionStorage.getItem("sidebarState");
    if (sidebarState === "active") {
        document.getElementById("sidebar").classList.add("active");
        
    }
});

document.getElementById("sidebarCollapse").addEventListener("click", function() {
    document.getElementById("sidebar").classList.toggle("active");
  
    closeAllSubmenus();

    var sidebarState = document.getElementById("sidebar").classList.contains("active") ? "active" : "inactive";
    sessionStorage.setItem("sidebarState", sidebarState);
});

document.querySelectorAll('.list-unstyled.components.dropdown-toggle').forEach(function(item) {
    item.addEventListener('click', function() {
        if (!document.getElementById("sidebar").classList.contains("active")) {
            document.getElementById("sidebar").classList.add("active");
            var sidebarState = "active";
            sessionStorage.setItem("sidebarState", sidebarState);
        }
    });
});

function closeAllSubmenus() {
    document.querySelectorAll("#sidebar .collapse.show").forEach(function(element) {
        element.classList.remove("show");
    });
}
