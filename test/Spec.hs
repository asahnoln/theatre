import Test.Hspec
import Theatre

main :: IO ()
main = hspec $ do
    describe "Action" $ do
        it "creates context for a scene" $ do
            let a = Actor
            let b = Actor

            let c1 = act a (Say "Go to hell!") b Happy
            c1 `shouldBe` Sudden

            let c2 = act b Punch a c1
            c2 `shouldBe` Sad
