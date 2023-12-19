--- For anyone looking to make a sub-mod check out the original gameNight mod's files:
--- ! SEE: `gameNight - implementUno` or  for a simpler example on adding decks.
--- CATAN includes 'game pieces' rather than *just* cards - scroll to the bottom for more info on those.
--- MONOPOLY includes 'alternative' names/icons for cards that will either have the same name or look the same but operate differently.

local gamePieceAndBoardHandler = require "gameNight - gamePieceAndBoardHandler"

local pieces = {}

local setSize = 6 --- sets are unique pairs of 0 to 6
---parsing through combinations calling registerSpecial
for i=setSize, 0, -1 do
    for ii=setSize, 0, -1 do
        local dominoID = "Base.Domino_"..ii.."_"..i

        table.insert(pieces, dominoID)

        gamePieceAndBoardHandler.registerSpecial(dominoID, { actions = { flipPiece=true }, altState="Domino_Flipped", shiftAction = "flipPiece" })
    end
    setSize=setSize-1
end

gamePieceAndBoardHandler.registerTypes(pieces)