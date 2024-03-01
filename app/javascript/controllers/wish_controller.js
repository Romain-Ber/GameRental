import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="wish"
export default class extends Controller {
  static targets = ["heart"]

  connect() {
    const gameId = this.element.dataset.gameId;
    const hasWishlistItem = this.hasWishlistItem(gameId);
    if (hasWishlistItem) {
      this.heartTarget.classList.toggle("wishlisted");
    }
  }

  hasWishlistItem(gameId) {
    const wishlistItems = JSON.parse(localStorage.getItem("wishlistItems")) || [];
    const found = wishlistItems.some(item => item.game_id === parseInt(gameId));
    console.log(`Game ${gameId} is in wishlist: ${found}`);
    return found;
  }

  toggleHeart(event) {
    const gameId = event.currentTarget.dataset.gameId;
    const hasWishlistItem = this.hasWishlistItem(gameId);

    if (hasWishlistItem) {
      this.removeFromWishlist(gameId).then(() => {
        this.element.classList.toggle("wishlisted");
      });
    } else {
      this.addToWishlist(gameId).then(() => {
        this.element.classList.toggle("wishlisted");
      });
    }
  }

  addToWishlist(gameId) {
    return fetch("/wishlists", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      },
      body: JSON.stringify({
        game_id: gameId
      })
    })
    .then(response => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      // Update UI or perform any necessary actions upon successful addition to wishlist
    })
    .catch(error => {
      console.error("Error:", error);
    });
  }

  removeFromWishlist(gameId) {
    return fetch(`/wishlists/${gameId}`, {
      method: "DELETE",
      headers: {
        "Content-Type": "application/json",
        "X-CSRF-Token": document.querySelector('meta[name="csrf-token"]').getAttribute('content')
      }
    })
    .then(response => {
      if (!response.ok) {
        throw new Error("Network response was not ok");
      }
      // Update UI or perform any necessary actions upon successful removal from wishlist
    })
    .catch(error => {
      console.error("Error:", error);
    });
  }
}
