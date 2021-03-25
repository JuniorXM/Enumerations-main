/*:
 ## Exercise - Enumerations
 
 Define a `Suit` enum with four possible cases: `clubs`, `spades`, `diamonds`, and `hearts`.
 */
enum Suit{case clubs, spades, diamonds, hearts
    
            }

/*:
 Now imagine you have to put back the card you drew and draw a different card. Update the variable to be a spade instead of a heart.
 */
cardInHand = .spades


var cardInHand: Suit = .hearts
print(cardInHand)

/*:
 Imagine you are writing an app that will display a fun fortune (i.e. something like "You will soon find what you seek.") based on cards drawn. Write a function called `getFortune(cardSuit:)` that takes a parameter of type `Suit`. Inside the body of the function, write a switch statement based on the value of `cardSuit`. Print a different fortune for each `Suit` value. Call the function a few times, passing in different values for `cardSuit` each time.
 */
func getFortune(cardSuit: Suit){
    switch cardSuit{
    case .clubs:
    print("You will soon find what you seek")
    case .spades:
    print("You will not  find what you seek")
    case .diamonds:
    print("You will get hit by a car")
    case .hearts:
    print("You will find money")
    }
}

/*:
 Create a `Card` struct below. It should have two properties, one for `suit` of type `Suit` and another for `value` of type `Int`.
 */
struct Card{
    var suit: Suit
    var value: Value
}

/*:
 How many values can playing cards have? How many values can `Int` be? It would be safer to have an enum for the card's value as well. Inside the struct above, create an enum for `Value`. It should have cases for `ace`, `two`, `three`, `four`, `five`, `six`, `seven`, `eight`, `nine`, `ten`, `jack`, `queen`, `king`. Change the type of `value` from `Int` to `Value`. Initialize two `Card` objects and print a statement for each that details the card's value and suit.
 */
enum Value{case ace, two, three, four, five, six, seven, eight, nine, ten, jack, queen, king}
var ace = Card(suit: .hearts, value: .six)
var king = Card(suit: .spades, value: .king)
print("the value of \(ace.suit) is \(ace.value)  ")
print("the value of \(king.suit) is \(king.value)  ")
print(ace)
print(king)

//: page 1 of 2  |  [Next: App Exercise - Swimming Workouts](@next)
