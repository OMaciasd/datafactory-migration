#!/bin/bash
describe('E2E Test', () => {
  it('Login and navigate to dashboard', () => {
    cy.visit('https://example.com/login')
    cy.get('input[name=username]').type('user')
    cy.get('input[name=password]').type('password')
    cy.get('button[type=submit]').click()
    cy.url().should('include', '/dashboard')
  })
})
