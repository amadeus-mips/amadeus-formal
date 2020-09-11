# What is this repo about

This repo demonstrates how I used the [symbiotic eda
suite](http://www.symbioticeda.com) to formally verify the cache
components and a number of other components in our design. This repo
requires some cleanup, as the code is spread across different machines
without version control…

# how to use it

First you should have the commercial version of symbiotic eda suite in
your *PATH*, then your should open the project for [amadeus
mips](https://github.com/amadeus-mips/amadeus-mips), and go to
/chisel/src/main/scala/cpu/pipelinedCache/veri/VeriDCache.scala and run
*VeriDCacheElaborate* to get a data cache that is used for formal
verification. You could also find ram for verification in
[link](https://github.com/amadeus-mips/amadeus-mips/tree/master/chisel/src/main/scala/verification).

# roadmap

  - cleanup the repo
  - formally verify more parts of the design
  - add better documentation
