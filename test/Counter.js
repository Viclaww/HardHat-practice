const { assert, expect } = require("chai");
const { ethers } = require("hardhat");

describe("CounterMod", () => {
  it("Count Should be equal to X", async function () {
    const x = 2000;

    const counter = await ethers.deployContract("Counter", [x]);

    const count = await counter.get();

    assert.equal(count, x, "Not Equal to x");
  });
});
