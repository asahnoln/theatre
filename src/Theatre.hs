module Theatre (
    Context (..),
    Actor (..),
    Action (..),
    act,
) where

data Actor = Actor deriving (Show, Eq)

data Context = Happy | Sad | Grim | Sudden deriving (Show, Eq)

data Action = Say String | Punch deriving (Show, Eq)

act :: Actor -> Action -> Actor -> Context -> Context
act a d b ctx = case ctx of
    Happy -> Sudden
    _ -> Sad
