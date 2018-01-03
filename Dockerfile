FROM haskell:8.2

RUN cabal update && cabal install gf

ENTRYPOINT ["gf"]
