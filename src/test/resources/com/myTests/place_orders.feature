Feature: Place orders from cart

Background:
Given "testuser" is logged in to the product store
And user is on "home" page

	Scenario Outline: testuser places orders on phones
	Given user added <phone> to cart
    When user places an order with "valid" credentials
	Then user sees message containing <message>

Examples:
	| phone    	    	    | message 			                |
	| "Samsung Galaxy s6"   | "Your order has been received"    |
	| "Nokia Lumia 520"     | "Your order has been received"    |