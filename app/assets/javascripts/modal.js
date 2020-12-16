document.addEventListener(
  "DOMContentLoaded", e => {
		jsModalOpen.onclick = function () {
      $('#overlay').fadeIn();
      document.getElementById('modal-close-btn').onclick = function () {
        $('#overlay').fadeOut();
      };
      document.getElementById("delete-comformation-btn").onclick = function () {
        document.getElementById("item-delete-btn").click();
      };
    };
  },
  false
);s