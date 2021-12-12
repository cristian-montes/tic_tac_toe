import Data.List

 --  An open piece has an integer (1+index), Player piece, which is X or O
data Piece
    = Open Int
    | Player Char
    deriving Eq

-- Difine show for pieces, so it displays constructor arguments
instance Show Piece where
    show (Open n) = show n
    show (Player c) = [c]

-- function that splits up list at an element and removes the nth item (index N-1)
removeNth :: Int -> [a] -> ([a], [a])
removeNth index list =(left,right)
    where
        (left, ys) = splitAt (index - 1) list
        right = drop 1 ys

-- Given a board, piece, and index to place it in, place piece
-- at the position N (index being N -1)
placePiece :: [a] -> a -> Int -> [a]
placePiece board piece index = xs ++ [piece] ++ ys
    where (xs, ys) = removeNth index board

-- Returns true if piece given is an Open piece
pieceIsOpen :: Piece -> Bool
pieceIsOpen (Open _) = True
pieceIsOpen _        =False

-- Return true if the index in this boar is open (index is N-1)
openSpace :: [Piece] -> Int -> Bool
openSpace board index
    | length board < i         = False
    | pieceIsOpen $ board !! i = True
    | otherwise                = False
    where i = index - 1

-- Given a game board, get a valid position to place a piece
getPiecePosition :: [Piece] -> IO Int
getPiecePosition board = do
    putStrLn " "
    putStrLn "Enter an open position (1-9):"
    input <- getChar
    -- if input is a single digit, return as int, otherwise get input again
    if input `elem` ['1' .. '9'] && openSpace board (read [input])
        then return $ (read [input])
        else getPiecePosition board
          
-- Makes a single line of three items in a board list
showBoardLine :: [Piece] -> String
showBoardLine (a:b:c:xs) =  (show a) ++ " | " ++ (show b) ++ " | " ++ (show c)
showBoardLine _= error "List must contain at leat three elements"

-- Border to separate board lines
boardBorder :: String
boardBorder = "\n-----------\n"

-- Given a layout turns that lay out into a string to print out
showBoard :: [Piece] -> String
showBoard board = concat $ intersperse boardBorder $ [top, middle, bottom]
    where
        top = showBoardLine board
        middle = showBoardLine (drop 3 board)
        bottom = showBoardLine (drop 6 board)

-- Given current character char (piece), give other character char (piece)
swapPlayers :: Char -> Char
swapPlayers 'X' = 'O'
swapPlayers 'O' = 'X'
swapPlayers  _   = error "swapPlayers only accepts the characters O or X"

-- Gicen a board, player piece, and position on board, check if
-- the player given won vertically starting from the given position
checkWonVertically :: [Piece] -> Piece -> Int -> Bool
checkWonVertically board player index = topPos == player && middlePos == player && bottomPos == player
    where
        topPos = board !! index
        middlePos = board !! (index + 3)
        bottomPos = board !! (index + 6)

-- Returns true if a player wins vertically
playerWonVertically :: [Piece] -> Piece -> Bool
playerWonVertically board player = or $ map(checkWonVertically board player) [0, 1, 2]


-- Given a board, player, and position, checks if the
-- player won by making a full row of their piece
checkWonHorizontally :: [Piece] -> Piece -> Int -> Bool
checkWonHorizontally board player index = firstPos == player && secondPos == player && thirdPos == player
    where
        firstPos = board !! index
        secondPos = board !! (index + 1)
        thirdPos = board !! (index + 2)

-- Returns true if a player wins horizontally
playerWonHorizontally :: [Piece] -> Piece -> Bool
playerWonHorizontally board player = or $ map (checkWonHorizontally board player) [0, 3, 6]


-- Given a board, player, starting index, and step, return true if the next three
-- pieces on the board are all the player's piece (they won)
checkWonDiagonally :: [Piece] -> Piece -> Int -> Int -> Bool
checkWonDiagonally board player index step = firstPos == player && secondPos == player && thirdPos == player
    where
        firstPos = board !! index
        secondPos = board !! (index + step)
        thirdPos = board !! (index + 2 * step)


-- Returns true if a player wins diagonally
playerWonDiagonally :: [Piece] -> Piece ->  Bool
playerWonDiagonally board player = wonFirstDiagonal || wonSecondDiagonal
    where
        wonFirstDiagonal = checkWonDiagonally board player 0 4
        wonSecondDiagonal = checkWonDiagonally board player 2 2

-- Returns true if a player wins horizontally or virtically or diagonally.
playerWon :: [Piece] -> Piece -> Bool
playerWon board player = playerWonDiagonally board player || playerWonHorizontally board player || playerWonVertically board player

-- Return true if the game has become a tie
tieGame :: [Piece] -> Bool
tieGame board = all (\piece -> not (pieceIsOpen piece)) board

-- Displays a message based on which player wins, or if it is a tie
checkBoardState :: [Piece] -> Char -> IO ()
checkBoardState board playerChr  
    | tieGame board                = putStrLn "It's a tie!"
    | playerWon board (Player 'X') = putStrLn "Player X won!"
    | playerWon board (Player 'O') = putStrLn "Player O won!"
    | otherwise                    = runTicTacToe board (swapPlayers playerChr)

-- Main function that compiles and runs the tic tac toe game
runTicTacToe :: [Piece] -> Char -> IO ()
runTicTacToe board playerChr = do
    putStrLn " "
    putStrLn $ showBoard board
    putStrLn " "
    rawChoice <- getPiecePosition board
    -- This creates a new board after the user picks an open piece 
    let newBoard = placePiece board (Player playerChr) rawChoice
    -- check if anyone won
    putStrLn " "
    putStrLn " "
    checkBoardState newBoard playerChr

main :: IO ()
main = runTicTacToe board 'O'
  where board = [Open 1, Open 2, Open 3, Open 4, Open 5, Open 6, Open 7, Open 8, Open 9]