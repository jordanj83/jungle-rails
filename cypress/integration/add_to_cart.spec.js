it("Users can navigate from the home page to a product page", () => {
  cy.visit('/')
  cy.get(".products article")
    .first()
    .click();
  cy.get(".product-detail").should("be.visible");
});

it("should add a product to cart and cart increases by 1", () => {
  cy.get(".button_to")
    .first()
    .click()
    cy.contains("Add").click()
    cy.get(".nav-link").contains("My Cart (1)")
})